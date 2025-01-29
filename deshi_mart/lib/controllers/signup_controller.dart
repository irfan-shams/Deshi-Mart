import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

  void onSignUp() {
    // print("Email:" + emailController.text);
    // print("Password:" + passController.text);
    createAccount(emailController.text, passController.text);
  }

  Future<void> createAccount(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      Fluttertoast.showToast(
        msg: "Account Created",
        backgroundColor: Colors.green[600],
      );
      print("Account Created");
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "weak-password") {
        Fluttertoast.showToast(
          msg: "Weak Password",
          backgroundColor: Colors.orange[400],
        );
        print("Weak Password");
      } else if (ex.code == "email-already-in-use") {
        Fluttertoast.showToast(
          msg: "Email already exists, Login Again!",
          backgroundColor: Colors.red[400],
        );
        print("Email already exists, Login Again!");
      }
    } catch (ex) {
      print(ex);
    }
  }
}
