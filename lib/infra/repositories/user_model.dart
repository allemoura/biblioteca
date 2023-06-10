// ignore_for_file: unused_field

import 'package:biblioteca/domain/entities/book.dart';
import 'package:biblioteca/domain/entities/library.dart';
import 'package:biblioteca/infra/models/library_data.dart';
import 'package:biblioteca/infra/models/user_data.dart';
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
      }
    }
    notifyListeners();
  }

  bool isLoggedIn() {
    return _firebaseUser != null;
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
          raffles: []));
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
      data["library"] = userData.library.toJson();
      data["raffles"] = [];

      await _firestore.collection("users").doc(_firebaseUser!.uid).set(data);
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
          raffles: []));
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
    Library library = userData!.library.toEntity();
    List<Book> reads = [];
    reads.addAll(library.reads);
    reads.add(book);
    library = library.copyWith(reads: reads);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }

  Future<void> addNewBookToRead(Book book) async {
    Library library = userData!.library.toEntity();
    List<Book> toRead = [];
    toRead.addAll(library.toRead);
    toRead.add(book);
    library = library.copyWith(toRead: toRead);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }

  Future<void> addNewBookDonated(Book book) async {
    Library library = userData!.library.toEntity();
    List<Book> donateds = [];
    donateds.addAll(library.donateds);
    donateds.add(book);
    library = library.copyWith(donateds: donateds);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }

  Future<void> addNewBookExchanged(Book book) async {
    Library library = userData!.library.toEntity();
    List<Book> exchangeds = [];
    exchangeds.addAll(library.exchangeds);
    exchangeds.add(book);
    library = library.copyWith(exchangeds: exchangeds);
    await updateUser(
        userData: UserData.fromEntity(
            userData!.toEntity().copyWith(library: library)));
  }
}
