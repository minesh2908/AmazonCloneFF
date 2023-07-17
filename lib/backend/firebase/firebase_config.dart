import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-btEcTWgVUBpAIS9KyLriJqU2mt3Mfsk",
            authDomain: "cloneff-e871e.firebaseapp.com",
            projectId: "cloneff-e871e",
            storageBucket: "cloneff-e871e.appspot.com",
            messagingSenderId: "861432824511",
            appId: "1:861432824511:web:44764eb5595c2c2a0d7c0a"));
  } else {
    await Firebase.initializeApp();
  }
}
