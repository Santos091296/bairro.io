import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCku6rK9eEZ_SlUle3cg6XYc1ZTDttMZnA",
            authDomain: "bairro-iva1hx.firebaseapp.com",
            projectId: "bairro-iva1hx",
            storageBucket: "bairro-iva1hx.appspot.com",
            messagingSenderId: "220551105572",
            appId: "1:220551105572:web:ccc3469601a02eaebe5cb1"));
  } else {
    await Firebase.initializeApp();
  }
}
