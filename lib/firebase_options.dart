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
    apiKey: 'AIzaSyBv9yKko2tEaGYtetx1O5bJ9OZYnY5DYr4',
    appId: '1:1094765821310:web:22729caf176a41f5fc872f',
    messagingSenderId: '1094765821310',
    projectId: 'chatting-app-5de5b',
    authDomain: 'chatting-app-5de5b.firebaseapp.com',
    storageBucket: 'chatting-app-5de5b.appspot.com',
    measurementId: 'G-MZN33PJVYZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_KJhmiimoHjKH-G8kDWCIzVdLcJbAz_s',
    appId: '1:1094765821310:android:c7b60290f2f5ce68fc872f',
    messagingSenderId: '1094765821310',
    projectId: 'chatting-app-5de5b',
    storageBucket: 'chatting-app-5de5b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAuTxAujY-cfufa1FQZFDKUI6IK9Oa8uY',
    appId: '1:1094765821310:ios:4371003495e286d4fc872f',
    messagingSenderId: '1094765821310',
    projectId: 'chatting-app-5de5b',
    storageBucket: 'chatting-app-5de5b.appspot.com',
    iosClientId: '1094765821310-utqjbgadkhjd46elae9onulvmgijc8u9.apps.googleusercontent.com',
    iosBundleId: 'com.tenriver.chattingAppUsingFb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCAuTxAujY-cfufa1FQZFDKUI6IK9Oa8uY',
    appId: '1:1094765821310:ios:7fcc9e7ea0708b12fc872f',
    messagingSenderId: '1094765821310',
    projectId: 'chatting-app-5de5b',
    storageBucket: 'chatting-app-5de5b.appspot.com',
    iosClientId: '1094765821310-ao2cb9382v2a5i4ojmh0oal391nsuuot.apps.googleusercontent.com',
    iosBundleId: 'com.tenriver.app',
  );
}