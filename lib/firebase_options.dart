// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCaPf2IK-I6j2qZ-BELvQdl51a4rA9LmU4',
    appId: '1:956114488224:web:3c4bad50b75cef7a4fb2c5',
    messagingSenderId: '956114488224',
    projectId: 'ardzz-ce3d3',
    authDomain: 'ardzz-ce3d3.firebaseapp.com',
    databaseURL: 'https://ardzz-ce3d3.firebaseio.com',
    storageBucket: 'ardzz-ce3d3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTaOekk49KdgQAb2LVlPvSjSJdl3n-G9E',
    appId: '1:956114488224:android:cb37a01f00a8048e4fb2c5',
    messagingSenderId: '956114488224',
    projectId: 'ardzz-ce3d3',
    databaseURL: 'https://ardzz-ce3d3.firebaseio.com',
    storageBucket: 'ardzz-ce3d3.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8eYI3Ho3E-s855O0ZgSZTQA5DKCxzBSU',
    appId: '1:956114488224:ios:4e553d3e11e69e104fb2c5',
    messagingSenderId: '956114488224',
    projectId: 'ardzz-ce3d3',
    databaseURL: 'https://ardzz-ce3d3.firebaseio.com',
    storageBucket: 'ardzz-ce3d3.appspot.com',
    iosBundleId: 'com.example.uts',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCaPf2IK-I6j2qZ-BELvQdl51a4rA9LmU4',
    appId: '1:956114488224:web:0e6efbb85ee22e654fb2c5',
    messagingSenderId: '956114488224',
    projectId: 'ardzz-ce3d3',
    authDomain: 'ardzz-ce3d3.firebaseapp.com',
    databaseURL: 'https://ardzz-ce3d3.firebaseio.com',
    storageBucket: 'ardzz-ce3d3.appspot.com',
  );
}
