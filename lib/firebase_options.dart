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
    apiKey: 'AIzaSyArKerDx_cq6BDwlz3xr7bnDILtx4kJOk8',
    appId: '1:817401432129:web:436edd8481c50f93c69ec0',
    messagingSenderId: '817401432129',
    projectId: 'finalpjocet',
    authDomain: 'finalpjocet.firebaseapp.com',
    storageBucket: 'finalpjocet.appspot.com',
    measurementId: 'G-KCVPHLPJQX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhxS7rQT6Me4bWb53stSARZufmzfgx_CY',
    appId: '1:817401432129:android:23d632fcb01a85f6c69ec0',
    messagingSenderId: '817401432129',
    projectId: 'finalpjocet',
    storageBucket: 'finalpjocet.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbwTBCUde9ptK9QVU3rASBcJTCfCQONAc',
    appId: '1:817401432129:ios:1fe733e96d249210c69ec0',
    messagingSenderId: '817401432129',
    projectId: 'finalpjocet',
    storageBucket: 'finalpjocet.appspot.com',
    iosClientId: '817401432129-o67b3dhruo1p7vv030lpa84f16a68enm.apps.googleusercontent.com',
    iosBundleId: 'com.example.taskcytrackerapp',
  );
}