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
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCDfoEr_pcvHqc4k5tftB6cMrxtKoIyA20',
    appId: '1:501406587751:web:26162939eef7022ba42dc2',
    messagingSenderId: '501406587751',
    projectId: 'logistic-e428c',
    authDomain: 'logistic-e428c.firebaseapp.com',
    storageBucket: 'logistic-e428c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7oS4HiPC2_UbtOTam49ERkUKr70DwA6U',
    appId: '1:501406587751:android:25e93ccf5f7bdf7fa42dc2',
    messagingSenderId: '501406587751',
    projectId: 'logistic-e428c',
    storageBucket: 'logistic-e428c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBX7omANPGJjmMwKbAuF9R0Yy9Cab-plRw',
    appId: '1:501406587751:ios:a62267ef8cedf2daa42dc2',
    messagingSenderId: '501406587751',
    projectId: 'logistic-e428c',
    storageBucket: 'logistic-e428c.appspot.com',
    androidClientId: '501406587751-f46akarqnsjm9rii7otqcm16jk6b98l7.apps.googleusercontent.com',
    iosClientId: '501406587751-0lv8r3u5dp29usrdtq3jsvhhomudj2g6.apps.googleusercontent.com',
    iosBundleId: 'com.example.logistic',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCDfoEr_pcvHqc4k5tftB6cMrxtKoIyA20',
    appId: '1:501406587751:web:94e43d109f77bdb1a42dc2',
    messagingSenderId: '501406587751',
    projectId: 'logistic-e428c',
    authDomain: 'logistic-e428c.firebaseapp.com',
    storageBucket: 'logistic-e428c.appspot.com',
  );

}