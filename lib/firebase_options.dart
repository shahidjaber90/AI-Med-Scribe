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
    apiKey: 'AIzaSyD0SmRBBJeSDlnRHRtL-BaE0ZGwlNfJsaA',
    appId: '1:258558869134:web:4e35a3ade912508ad593df',
    messagingSenderId: '258558869134',
    projectId: 'aimedscribble',
    authDomain: 'aimedscribble.firebaseapp.com',
    storageBucket: 'aimedscribble.appspot.com',
    measurementId: 'G-T152JKJEKN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZ6vcM8Dwm-LgSnRvGSvYFCmCkA8j2GJs',
    appId: '1:258558869134:android:b855d65883e8255bd593df',
    messagingSenderId: '258558869134',
    projectId: 'aimedscribble',
    storageBucket: 'aimedscribble.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_AQIB3_lrWqaTnuDX3lY-aLxvE_r8X9A',
    appId: '1:258558869134:ios:545e4eb8542fa8fdd593df',
    messagingSenderId: '258558869134',
    projectId: 'aimedscribble',
    storageBucket: 'aimedscribble.appspot.com',
    iosClientId: '258558869134-8pj9371jk5vtrmhnc6jd8s9l8ji903jn.apps.googleusercontent.com',
    iosBundleId: 'com.example.aiMedScribble',
  );
}
