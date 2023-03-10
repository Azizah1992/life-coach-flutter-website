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
    apiKey: 'AIzaSyBwsB_rS1AcLnq35H3z_M32KAQptZV0QQ0',
    appId: '1:580890427886:web:6aa12f080d0c0c6b274eff',
    messagingSenderId: '580890427886',
    projectId: 'lifecoach-decd3',
    authDomain: 'lifecoach-decd3.firebaseapp.com',
    storageBucket: 'lifecoach-decd3.appspot.com',
    measurementId: 'G-T67VDQFBSN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrgH1nmYeg30CUQmmMBbzos9xUMiPxm1o',
    appId: '1:580890427886:android:d495fe7b5ae9f7e5274eff',
    messagingSenderId: '580890427886',
    projectId: 'lifecoach-decd3',
    storageBucket: 'lifecoach-decd3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZFzZK591U9XyF-MuLZH0W0V2gr0_64Ok',
    appId: '1:580890427886:ios:5ca962f3d5047888274eff',
    messagingSenderId: '580890427886',
    projectId: 'lifecoach-decd3',
    storageBucket: 'lifecoach-decd3.appspot.com',
    iosClientId: '580890427886-tnj7mlvo6aaqsv9v26lcg8tpf1um86l2.apps.googleusercontent.com',
    iosBundleId: 'com.example.backend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZFzZK591U9XyF-MuLZH0W0V2gr0_64Ok',
    appId: '1:580890427886:ios:5ca962f3d5047888274eff',
    messagingSenderId: '580890427886',
    projectId: 'lifecoach-decd3',
    storageBucket: 'lifecoach-decd3.appspot.com',
    iosClientId: '580890427886-tnj7mlvo6aaqsv9v26lcg8tpf1um86l2.apps.googleusercontent.com',
    iosBundleId: 'com.example.backend',
  );
}
