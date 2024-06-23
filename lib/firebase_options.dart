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
    apiKey: 'AIzaSyDH_YGuMfr0z6YuEundSWEj8RgPWqpdwHU',
    appId: '1:953969797375:web:11974010567315461b44ca',
    messagingSenderId: '953969797375',
    projectId: 'popcornportal-c1b43',
    authDomain: 'popcornportal-c1b43.firebaseapp.com',
    storageBucket: 'popcornportal-c1b43.appspot.com',
    measurementId: 'G-8EGDQ5BHSY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyANcTN0GwewKJuCeIShX65Qu2UEdbYu0dg',
    appId: '1:953969797375:android:367023395b5df2791b44ca',
    messagingSenderId: '953969797375',
    projectId: 'popcornportal-c1b43',
    storageBucket: 'popcornportal-c1b43.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANOmfL6Vm8ipHFPp_XEuin054Bgq0k52w',
    appId: '1:953969797375:ios:9b537c12b386a9051b44ca',
    messagingSenderId: '953969797375',
    projectId: 'popcornportal-c1b43',
    storageBucket: 'popcornportal-c1b43.appspot.com',
    iosBundleId: 'com.example.popcornPortal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANOmfL6Vm8ipHFPp_XEuin054Bgq0k52w',
    appId: '1:953969797375:ios:9b537c12b386a9051b44ca',
    messagingSenderId: '953969797375',
    projectId: 'popcornportal-c1b43',
    storageBucket: 'popcornportal-c1b43.appspot.com',
    iosBundleId: 'com.example.popcornPortal',
  );
}
