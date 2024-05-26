import 'package:flutter/material.dart';
import 'package:flutterfirst/database/cloud_storage/firebase_email_pwd_auth/firebaseFunctions.dart';
import 'package:flutterfirst/database/cloud_storage/firebase_email_pwd_auth/regfire.dart';
import 'package:get/get.dart';

import 'homeFire.dart';

class LoginFire extends StatelessWidget {

  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder()
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwdController,
                decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder()
                ),
              ),
            ),
            MaterialButton(onPressed: (){
              loginUser();
            },
              color: Colors.pink,
              shape: const StadiumBorder(),
              child: const Text("Login"),
            ),
            TextButton(
                onPressed: (){
                  Get.to(RegFire());
                },
                child: const Text("Not registered? Register here"))
          ],
        ),
      ),
    );
  }

  void loginUser() {
    String email = emailController.text.trim();
    String pass = pwdController.text.trim();

    FirebaseFunctions()
    .signInUser(email: email, pwd: pass)
    .then((response) {
      if (response == null) {
        Get.to(HomeFire());
      }else {
        Get.snackbar("Error", response);
      }
    });
  }
}
