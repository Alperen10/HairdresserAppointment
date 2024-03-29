import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hairdresser/dashboard.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return FlutterLogin(
      title:"SALON DENİZ",
      onLogin: _loginUser,
      onSignup: _signUpUser,
      onSubmitAnimationCompleted:() async{
        FirebaseAuth _auth = FirebaseAuth.instance;
        await _auth.currentUser().then((user) => user != null ? Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>DashboardScreen()))
        : Fluttertoast.showToast(msg: "User not register before"));
      },
      onRecoverPassword: _recoveryPassword,
    );
  }

  // ignore: missing_return
  Future<String> _loginUser(LoginData loginData){
    _handleSignIn(loginData.name.trim(),loginData.password).then((user)=>Fluttertoast.showToast(
      msg:"Welcome ${user.email}",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.teal,
      textColor: Colors.white,
      fontSize: 16
    ))
    .catchError((e)=>Fluttertoast.showToast(
      // ignore: unnecessary_brace_in_string_interps
      msg:"${e}",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16

    ));

  }

  Future<FirebaseUser> _handleSignIn(String email,String password) async{
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseUser _user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
    return _user;
  }

  // ignore: missing_return
  Future<String> _signUpUser(LoginData loginData){
    _handleSignUp(loginData.name.trim(),loginData.password).then((user)=>Fluttertoast.showToast(
      msg:"Welcome ${user.email}",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.teal,
      textColor: Colors.white,
      fontSize: 16
    ))
    .catchError((e)=>Fluttertoast.showToast(
      // ignore: unnecessary_brace_in_string_interps
      msg:"${e}",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16
      

    ));



  }

  Future<FirebaseUser> _handleSignUp(String email,String password) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseUser _user = (await _auth.createUserWithEmailAndPassword(email: email, password: password)).user;
    return _user;

  }

  // ignore: missing_return
  Future<String> _recoveryPassword(String email) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth.sendPasswordResetEmail(email: email).catchError((e)=>Fluttertoast.showToast(
      // ignore: unnecessary_brace_in_string_interps
      msg:"${e}",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16
      

    ));


  }

}