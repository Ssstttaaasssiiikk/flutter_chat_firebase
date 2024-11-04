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
    apiKey: 'AIzaSyDH8ldnvzddwPH6945qMd8u4j2QQ3fZwc0',
    appId: '1:879789760192:web:ac573bb6e832ee18f69725',
    messagingSenderId: '879789760192',
    projectId: 'chat-flutter-firebase-b08cb',
    authDomain: 'chat-flutter-firebase-b08cb.firebaseapp.com',
    storageBucket: 'chat-flutter-firebase-b08cb.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUoLZLOCq2U1_phQwox_FJjagPcTLxwAQ',
    appId: '1:879789760192:android:4b4b9d934f9b5cb6f69725',
    messagingSenderId: '879789760192',
    projectId: 'chat-flutter-firebase-b08cb',
    storageBucket: 'chat-flutter-firebase-b08cb.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvtdA3y8F6gMsb6XfYCbqCInSTSkiFpPM',
    appId: '1:879789760192:ios:412210acbc64d722f69725',
    messagingSenderId: '879789760192',
    projectId: 'chat-flutter-firebase-b08cb',
    storageBucket: 'chat-flutter-firebase-b08cb.firebasestorage.app',
    iosBundleId: 'com.example.chatFlutterFirebase',
  );
}