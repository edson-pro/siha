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
        return macos;
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
    apiKey: 'AIzaSyATMz8J638dQUYaAvPyLW95EB_GIzvqmgg',
    appId: '1:1030099131065:web:f0f6fc4dbe664eeb829968',
    messagingSenderId: '1030099131065',
    projectId: 'siha-c7255',
    authDomain: 'siha-c7255.firebaseapp.com',
    storageBucket: 'siha-c7255.appspot.com',
    measurementId: 'G-VGFL53NQGR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEn7w5ODYPxoh1MdrpypjSqippdPkaBig',
    appId: '1:1030099131065:android:5160898a752fa4cf829968',
    messagingSenderId: '1030099131065',
    projectId: 'siha-c7255',
    storageBucket: 'siha-c7255.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPmx451iNNg3xpydNV9Ur-odppZhMcl_I',
    appId: '1:1030099131065:ios:487d190eb7290e3b829968',
    messagingSenderId: '1030099131065',
    projectId: 'siha-c7255',
    storageBucket: 'siha-c7255.appspot.com',
    iosClientId: '1030099131065-be859gddggpt0bi0p23igg6hiapguhtg.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPmx451iNNg3xpydNV9Ur-odppZhMcl_I',
    appId: '1:1030099131065:ios:487d190eb7290e3b829968',
    messagingSenderId: '1030099131065',
    projectId: 'siha-c7255',
    storageBucket: 'siha-c7255.appspot.com',
    iosClientId: '1030099131065-be859gddggpt0bi0p23igg6hiapguhtg.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
