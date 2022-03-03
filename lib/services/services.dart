import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AppServices {
  static Future<User?> login(String email, String password) async {
    User? user;
    FirebaseAuth auth = FirebaseAuth.instance;

    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
    }
    on FirebaseAuthException catch(e) {

    }

    return user;
  }

  static void logout() {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();
  }

  static Future<void> getItems() async {
    DocumentSnapshot querySnapshot = await FirebaseFirestore.instance.collection("items").doc().get();

  }
}