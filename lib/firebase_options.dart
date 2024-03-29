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
    apiKey: 'AIzaSyAKpGKyTsMjsCHQbhbbmF5-Cw3wlE0FF0s',
    appId: '1:43898774294:web:76a23f3d3598c9be586637',
    messagingSenderId: '43898774294',
    projectId: 'first-eb7bb',
    authDomain: 'first-eb7bb.firebaseapp.com',
    storageBucket: 'first-eb7bb.appspot.com',
    measurementId: 'G-BBPEQCGT2L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD0m6tfC48HvUL3oY0RlxM62w6uFVB055Y',
    appId: '1:43898774294:android:82be2d31dfefe4c0586637',
    messagingSenderId: '43898774294',
    projectId: 'first-eb7bb',
    storageBucket: 'first-eb7bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyChRjcIBclaeO_faM8vi4QpDBbqIJUkIvk',
    appId: '1:43898774294:ios:aaa001563907a64c586637',
    messagingSenderId: '43898774294',
    projectId: 'first-eb7bb',
    storageBucket: 'first-eb7bb.appspot.com',
    iosClientId: '43898774294-jiiqu21249ohra00q1rba095kond4jge.apps.googleusercontent.com',
    iosBundleId: 'com.example.travelApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyChRjcIBclaeO_faM8vi4QpDBbqIJUkIvk',
    appId: '1:43898774294:ios:aaa001563907a64c586637',
    messagingSenderId: '43898774294',
    projectId: 'first-eb7bb',
    storageBucket: 'first-eb7bb.appspot.com',
    iosClientId: '43898774294-jiiqu21249ohra00q1rba095kond4jge.apps.googleusercontent.com',
    iosBundleId: 'com.example.travelApp',
  );
}
