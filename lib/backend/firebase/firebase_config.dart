import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2CwlTa_otcB1hY6Y6Ce0Oa4G2dKdm0zA",
            authDomain: "todo-j67kad.firebaseapp.com",
            projectId: "todo-j67kad",
            storageBucket: "todo-j67kad.firebasestorage.app",
            messagingSenderId: "839198010306",
            appId: "1:839198010306:web:07d530aab5140ce355445b"));
  } else {
    await Firebase.initializeApp();
  }
}
