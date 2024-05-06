import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXMd9PjgZW6W2oFa7r07epFMGKF70Vo3Y',
    appId: '1:1022360882166:android:8d67fa950db7ac3e3115d7',
    messagingSenderId: '1022360882166',
    projectId: 'fir-auth-90964',
    storageBucket: 'fir-auth-90964.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAhKzy6JtCixIx4bY-v8RXHjLylFAgOji8',
    appId: '1:1022360882166:ios:2284f44915bf72653115d7',
    messagingSenderId: '1022360882166',
    projectId: 'fir-auth-90964',
    storageBucket: 'fir-auth-90964.appspot.com',
    iosBundleId: 'com.example.flutterPractice',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC-EQlUcLvieiyCB7rxXm1M7ZVroWHekt8',
    appId: '1:1022360882166:web:2c5ba4e8482d64203115d7',
    messagingSenderId: '1022360882166',
    projectId: 'fir-auth-90964',
    authDomain: 'fir-auth-90964.firebaseapp.com',
    storageBucket: 'fir-auth-90964.appspot.com',
  );
}
