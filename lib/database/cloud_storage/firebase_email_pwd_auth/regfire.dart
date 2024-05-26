import 'package:flutter/material.dart';
import 'package:flutterfirst/database/cloud_storage/firebase_email_pwd_auth/loginfire.dart';
import 'package:get/get.dart';
import 'firebaseFunctions.dart';

class RegFire extends StatelessWidget {

  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder()
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: pwdController,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            MaterialButton(
              onPressed: (){
              registerUser();
            },
            color: Colors.pink,
            shape: StadiumBorder(),
              child: Text("Register"),
            ),
            TextButton(
                onPressed: (){
                  Get.to(LoginFire());
                },
                child: Text("Already registered? Login here"))
          ],
        ),
      ),
    );
  }

  void registerUser(){
    String email = emailController.text.trim();
    String pass = pwdController.text.trim();

    FirebaseFunctions()
    .signUpUser(email: email, pwd: pass)
    .then((response){
      if (response == null){
        Get.to(LoginFire());
      }else{
        Get.snackbar("Error", response);
      }
    });
  }

}
