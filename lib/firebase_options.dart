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
    apiKey: 'AIzaSyBnAAxlcwJN6ie7JTl6ZJYFNTqwj1ThcK8',
    appId: '1:537773291573:web:c9818f0a43f6936712d97c',
    messagingSenderId: '537773291573',
    projectId: 'fir-flutter-16c0f',
    authDomain: 'fir-flutter-16c0f.firebaseapp.com',
    databaseURL: 'https://fir-flutter-16c0f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fir-flutter-16c0f.appspot.com',
    measurementId: 'G-KLPQSHS3W1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZRoIioAUrRITqcuTy2j01FaSggYIozNo',
    appId: '1:537773291573:android:8b9c626e37271ef812d97c',
    messagingSenderId: '537773291573',
    projectId: 'fir-flutter-16c0f',
    databaseURL: 'https://fir-flutter-16c0f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fir-flutter-16c0f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBH-pbsaNJNUYMtS3cA-czBFbJKNZr5h6w',
    appId: '1:537773291573:ios:fd676445121b894b12d97c',
    messagingSenderId: '537773291573',
    projectId: 'fir-flutter-16c0f',
    databaseURL: 'https://fir-flutter-16c0f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'fir-flutter-16c0f.appspot.com',
    iosClientId: '537773291573-6ikak6chp4vqtruf1h3e71abhcijofqc.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAuth',
  );
}
