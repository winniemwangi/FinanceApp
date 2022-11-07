import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  final databaseReference =
  FirebaseDatabase.instance.reference().child("users");

  void saveUser(Map<String, String> user) {
    var currentUser = FirebaseAuth.instance.currentUser;
    databaseReference.child(currentUser?.uid.toString() ?? "").set(user);
  }

  void readData() {
    var currentUser = FirebaseAuth.instance.currentUser;
    databaseReference
        .child(currentUser?.uid.toString() ?? "")
        .once()
        .then((value) {});
  }
}
