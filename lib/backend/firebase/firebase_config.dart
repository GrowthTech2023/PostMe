import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB3byAz0vdzc2r7lGpcb5ZNuiWRy439exo",
            authDomain: "postme-390612.firebaseapp.com",
            projectId: "postme-390612",
            storageBucket: "postme-390612.appspot.com",
            messagingSenderId: "978165118544",
            appId: "1:978165118544:web:cb3da9e9b642222ecc4355",
            measurementId: "G-Q21R743BEN"));
  } else {
    await Firebase.initializeApp();
  }
}
