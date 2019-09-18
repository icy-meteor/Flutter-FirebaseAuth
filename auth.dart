//https://github.com/icy-meteor/Flutter-FirebaseAuth
//Rahul Suresh
//Refer readme for instructions

//Importing Dart libraries
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

//Abstract Class
abstract class BaseAuth {

  Future<String> currentUser();
  Future<String> signIn(String email, String password);
  Future<String> createUser(String email, String password);
  Future<void> signOut();
    Future<void> sendPasswordResetEmail(String email) ;
}

class Auth implements BaseAuth {

  //Create a Firebase Auth Instance
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //Method to create new user with email and password
  Future<String> createUser(String email, String password) async {
    FirebaseUser user = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return user.uid;
  }
  
  //Method to sign in user with email and password
  Future<String> signIn(String email, String password) async {
    FirebaseUser user = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return user.uid;
  }

  //Method to check current user status
  Future<String> currentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user != null ? user.uid : null;
  }

  //Method to signout
  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  //Method to reset password
  Future<void> sendPasswordResetEmail(String email) async {
    return _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  //Open to PRs for implementation of other methods such as Google Auth, Facebook, etc.
}