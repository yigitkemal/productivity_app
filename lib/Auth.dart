

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  Future signUp({required String email, required String password}) async{
    try{
      await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      return null;
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }

  Future singIn({required String email, required String password}) async{
    try{
      await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
    }on FirebaseAuthException catch(e){
      return e. message;
    }
  }

  Future signOut() async {
    await _auth.signOut();
    print('signout');
  }


}