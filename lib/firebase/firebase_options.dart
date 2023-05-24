// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCLKWyFgTV7mCK-nVo9WOUZQLridrRb8XE',
    appId: '1:466675687796:web:00366ae81156cdfa70cc21',
    messagingSenderId: '466675687796',
    projectId: 'flutter-notifications-9e116',
    authDomain: 'flutter-notifications-9e116.firebaseapp.com',
    storageBucket: 'flutter-notifications-9e116.appspot.com',
    measurementId: 'G-DRKPJD6Z4N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEM-_jfHZ8CpI-Uwhwu3ul4sl4yghuoEs',
    appId: '1:466675687796:android:3febe77a5d8d3eab70cc21',
    messagingSenderId: '466675687796',
    projectId: 'flutter-notifications-9e116',
    storageBucket: 'flutter-notifications-9e116.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKuZWtnGi3kM3uVqM74PjeWhUM-1jZ14Y',
    appId: '1:466675687796:ios:0a5c9506553aa79670cc21',
    messagingSenderId: '466675687796',
    projectId: 'flutter-notifications-9e116',
    storageBucket: 'flutter-notifications-9e116.appspot.com',
    androidClientId: '466675687796-74ue4433qcvfurrjesqvefe88fldub99.apps.googleusercontent.com',
    iosClientId: '466675687796-ng7jf39e3uda2jahf5euq3n9454a1tpk.apps.googleusercontent.com',
    iosBundleId: 'com.swampash.s16Notifications',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCKuZWtnGi3kM3uVqM74PjeWhUM-1jZ14Y',
    appId: '1:466675687796:ios:feada79a9a2b4d9470cc21',
    messagingSenderId: '466675687796',
    projectId: 'flutter-notifications-9e116',
    storageBucket: 'flutter-notifications-9e116.appspot.com',
    androidClientId: '466675687796-74ue4433qcvfurrjesqvefe88fldub99.apps.googleusercontent.com',
    iosClientId: '466675687796-2uhqjq01kibqrjh1gshfno242sisrq14.apps.googleusercontent.com',
    iosBundleId: 'com.swampash.s16Notifications.RunnerTests',
  );
}