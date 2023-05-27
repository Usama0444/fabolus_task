import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  var collectionRef = FirebaseFirestore.instance.collection('user');
  userSignIn({String? email, String? password}) async {
    var id = collectionRef.id;
    await collectionRef.doc(id).set({
      'email': email,
      'password': password,
      'uid': id,
    });
  }
}
