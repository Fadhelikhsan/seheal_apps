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
    apiKey: 'AIzaSyBq74HlFN6qs-oM0hQ33b29Q23SH-0e5H4',
    appId: '1:266678081974:web:ab502868884e3e7a214917',
    messagingSenderId: '266678081974',
    projectId: 'seheal-bdc3e',
    authDomain: 'seheal-bdc3e.firebaseapp.com',
    storageBucket: 'seheal-bdc3e.appspot.com',
    measurementId: 'G-F3W5YJB86E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAEe5BAjxp6z8d6nMcWMOEEDjDk1VEPu70',
    appId: '1:266678081974:android:9d788405da3446c7214917',
    messagingSenderId: '266678081974',
    projectId: 'seheal-bdc3e',
    storageBucket: 'seheal-bdc3e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmdLBIUIeGQvYCtIfxX37rFzUwF5akhu8',
    appId: '1:266678081974:ios:095184d57fec646a214917',
    messagingSenderId: '266678081974',
    projectId: 'seheal-bdc3e',
    storageBucket: 'seheal-bdc3e.appspot.com',
    iosBundleId: 'com.codeforany.fitness',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmdLBIUIeGQvYCtIfxX37rFzUwF5akhu8',
    appId: '1:266678081974:ios:7e8a1fb57a3874a4214917',
    messagingSenderId: '266678081974',
    projectId: 'seheal-bdc3e',
    storageBucket: 'seheal-bdc3e.appspot.com',
    iosBundleId: 'com.codeforany.fitnessWorkoutAppFlutter3Ui.RunnerTests',
  );
}
