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
    apiKey: 'AIzaSyDGt6zmohFY--umVk4bR1JEttbYm7UvXQU',
    appId: '1:789774305313:web:9164a4967fde16b0283b60',
    messagingSenderId: '789774305313',
    projectId: 'bhai-b7629',
    authDomain: 'bhai-b7629.firebaseapp.com',
    storageBucket: 'bhai-b7629.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHgXbDrWtgtjUpnDdTCNn7_7B_Vd5DE48',
    appId: '1:789774305313:android:dc03c553a80fa265283b60',
    messagingSenderId: '789774305313',
    projectId: 'bhai-b7629',
    storageBucket: 'bhai-b7629.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC9DEiLuJ7pG7IpisvL2WrSsW6ALx2G-vY',
    appId: '1:789774305313:ios:7108c689d3085440283b60',
    messagingSenderId: '789774305313',
    projectId: 'bhai-b7629',
    storageBucket: 'bhai-b7629.appspot.com',
    iosClientId: '789774305313-vaf56ffkstb1e0sj0vqgn37a9sr7u6np.apps.googleusercontent.com',
    iosBundleId: 'com.example.emosense',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC9DEiLuJ7pG7IpisvL2WrSsW6ALx2G-vY',
    appId: '1:789774305313:ios:92cd7e4732fa5212283b60',
    messagingSenderId: '789774305313',
    projectId: 'bhai-b7629',
    storageBucket: 'bhai-b7629.appspot.com',
    iosClientId: '789774305313-25j3nhi1q42bmk0rvd0mfbtgu60t1gd5.apps.googleusercontent.com',
    iosBundleId: 'com.example.emosense.RunnerTests',
  );
}
