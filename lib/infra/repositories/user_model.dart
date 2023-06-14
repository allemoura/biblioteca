// ignore_for_file: unused_field

import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/library.dart';
import 'package:biblioteca/infra/models/library_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
import 'package:biblioteca/infra/repositories/book_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User? _firebaseUser;
  UserCredential? _userCredential;

  UserData? userData;

  bool isLoding = false;

  static UserModel of(BuildContext context) =>
      ScopedModel.of<UserModel>(context);

  @override
  void addListener(VoidCallback listener) {
    super.addListener(listener);

    _loadCurrentUser();
  }

  Future<void> _loadCurrentUser() async {
    _firebaseUser ??= _auth.currentUser;

    if (_firebaseUser != null) {
      if (userData == null) {
        DocumentSnapshot docUser = await _firestore
            .collection("users")
            .doc(_auth.currentUser!.uid)
            .get();

        final data = docUser.data() as Map<String, dynamic>;

        userData = UserData.fromJson(data);

        userData = UserData.fromEntity(userData!
            .toEntity()
            .copyWith(library: await convertLibrary(data["library"])));
      }
    }
    notifyListeners();
  }

  bool isLoggedIn() {
    return _firebaseUser != null;
  }

  Future<Library> convertLibrary(Map<String, dynamic> data) async {
    final toRead = await getBook(data["toRead"]);
    final reads = await getBook(data["reads"]);
    final donateds = await getBook(data["donateds"]);
    final exchangeds = await getBook(data["exchangeds"]);

    return const Library(toRead: [], reads: [], exchangeds: [], donateds: [])
        .copyWith(
            toRead: toRead,
            reads: reads,
            exchangeds: exchangeds,
            donateds: donateds);
  }

  Future<List<Book>> getBook(List<dynamic> books) async {
    List<Book> booksConvert = [];

    for (final bookId in books) {
      final newBook = await BookModel().getBookById(bookId);
      booksConvert.add(newBook.toEntity());
    }
    return booksConvert;
  }

  Future<bool> signUp(
      {required String email,
      required String name,
      required String pass}) async {
    isLoding = true;
    notifyListeners();

    await _auth
        .createUserWithEmailAndPassword(
      email: email,
      password: pass,
    )
        .then((user) async {
      _userCredential = user;
      _firebaseUser = _auth.currentUser;

      await _saveUserData(UserData(
        name: name,
        email: email,
        library:
            LibraryData(reads: [], toRead: [], exchangeds: [], donateds: []),
      ));
      await _loadCurrentUser();

      isLoding = false;
      notifyListeners();
      return true;
    }).catchError((e) {
      isLoding = false;
      notifyListeners();
      return false;
    });

    return true;
  }

  Future<bool> signIn({required String email, required String pass}) async {
    isLoding = true;
    notifyListeners();

    _auth.signInWithEmailAndPassword(email: email, password: pass).then((user) {
      _userCredential = user;
      _loadCurrentUser();

      isLoding = false;
      notifyListeners();
      return true;
    }).catchError((e) {
      isLoding = false;
      notifyListeners();
      return false;
    });
    return true;
  }

  Future<void> _saveUserData(UserData? userData) async {
    this.userData = userData;
    if (userData != null) {
      Map<String, dynamic> data = userData.toJson();
      data["library"] = userData.library!.toJson();

      await _firestore.collection("users").doc(userData.id).set(data);
    }
  }

  Future updateUserDate(UserData userDate) async {
    isLoding = true;
    notifyListeners();

    try {
      await _saveUserData(userDate);

      isLoding = false;
      notifyListeners();
    } catch (e) {
      isLoding = false;
      notifyListeners();
    }
  }

  Future<void> updateUserLocal() async {
    isLoding = true;
    notifyListeners();

    try {
      await _saveUserData(userData);

      isLoding = false;
      notifyListeners();
    } catch (e) {
      isLoding = false;
      notifyListeners();
    }
  }

  Future<void> updateUser({
    required UserData userData,
  }) async {
    isLoding = true;
    notifyListeners();

    try {
      await _saveUserData(userData);

      await _loadCurrentUser();

      isLoding = false;
      notifyListeners();
    } catch (e) {
      isLoding = false;
      notifyListeners();
    }
  }

  void recoverPass(String email) {
    _auth.sendPasswordResetEmail(email: email);
  }

  void updateEmail(String email) {
    _firebaseUser!
        .updateEmail(email)
        .catchError((onError) => debugPrint(onError));
  }

  void signOut() async {
    await _auth.signOut();

    userData = null;
    _firebaseUser = null;

    notifyListeners();
  }

  String getUserUid() {
    return _firebaseUser!.uid;
  }

  Future<bool> signInWithGoogle() async {
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    try {
      _userCredential = await _auth.signInWithCredential(credential);
      await updateUserDate(UserData(
        name: _userCredential!.user!.displayName!,
        email: _userCredential!.user!.email!,
        library:
            LibraryData(reads: [], toRead: [], exchangeds: [], donateds: []),
      ));
      await _loadCurrentUser();

      isLoding = false;
      notifyListeners();
      return true;
    } catch (e) {
      isLoding = false;
      notifyListeners();

      return false;
    }
  }

  Future<void> addNewBookRead(Book book) async {
    Library library = userData!.library!.toEntity();
    List<Book> reads = [];
    reads.addAll(library.reads);

    if (verifeBook(reads, book)) return;
    reads.add(book);
    library = library.copyWith(reads: reads);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }

  Future<void> addNewBookToRead(Book book) async {
    Library library = userData!.library!.toEntity();
    List<Book> toRead = [];
    toRead.addAll(library.toRead);

    if (verifeBook(toRead, book)) return;
    toRead.add(book);
    library = library.copyWith(toRead: toRead);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }

  Future<void> addNewBookDonated(Book book) async {
    Library library = userData!.library!.toEntity();
    List<Book> donateds = [];
    donateds.addAll(library.donateds);

    if (verifeBook(donateds, book)) return;
    donateds.add(book);
    library = library.copyWith(donateds: donateds);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }

  Future<void> addNewBookExchanged(Book book) async {
    Library library = userData!.library!.toEntity();
    List<Book> exchangeds = [];
    exchangeds.addAll(library.exchangeds);

    if (verifeBook(exchangeds, book)) return;
    exchangeds.add(book);
    library = library.copyWith(exchangeds: exchangeds);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }

  Future<void> addNewBookExchangedToOtherUser(
      Book book, UserData usertoAdd) async {
    Library library = usertoAdd.library!.toEntity();
    List<Book> exchangeds = [];
    exchangeds.addAll(library.exchangeds);

    if (verifeBook(exchangeds, book)) return;
    exchangeds.add(book);
    library = library.copyWith(exchangeds: exchangeds);
    await _saveUserData(
        UserData.fromEntity(usertoAdd.toEntity().copyWith(library: library)));
  }

  bool verifeBook(List<Book> books, Book book) {
    bool contais = false;

    for (final bookContain in books) {
      if (bookContain.id == book.id) {
        contais = true;
        break;
      }
    }
    return contais;
  }

  Future<List<UserData>> getUsersByFilter(String? user) async {
    List<UserData> users = [];

    final docUser = await _firestore
        .collection("users")
        .where("name", isGreaterThanOrEqualTo: user)
        .where("name", isLessThan: '${user}z')
        .get();

    for (final doc in docUser.docs) {
      final data = doc.data();

      UserData user = UserData.fromJson(data);

      user = UserData.fromEntity(user
          .toEntity()
          .copyWith(library: await convertLibrary(data["library"])));
      users.add(user);
    }
    return users;
  }
}
