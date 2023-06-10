// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDS8ZzbNsc_FSufTbsfojGnlyXOhEDmZ60',
    appId: '1:716410744431:web:82424b0b58abf6fa95679a',
    messagingSenderId: '716410744431',
    projectId: 'biblioteca-dc8c1',
    authDomain: 'biblioteca-dc8c1.firebaseapp.com',
    storageBucket: 'biblioteca-dc8c1.appspot.com',
    measurementId: 'G-58HCRDS9E1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDamCHFYg0ZD-SY-XSCayoqs1ZwqeZuEEY',
    appId: '1:716410744431:android:e08d48d18d7ffeb895679a',
    messagingSenderId: '716410744431',
    projectId: 'biblioteca-dc8c1',
    storageBucket: 'biblioteca-dc8c1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArhj9v04y5pyFZQmy6xCEJdnF4Hs1-72Y',
    appId: '1:716410744431:ios:cb12359b59656ec095679a',
    messagingSenderId: '716410744431',
    projectId: 'biblioteca-dc8c1',
    storageBucket: 'biblioteca-dc8c1.appspot.com',
    iosClientId: '716410744431-8ebjanvi3g1hdcbbgdeecuuo85alje7c.apps.googleusercontent.com',
    iosBundleId: 'com.example.biblioteca',
  );
}