import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/database/cloud_storage/firebase_email_pwd_auth/regfire.dart';
import 'package:get/get.dart';

import 'loginfire.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAvpso08Aziq-IZEpQfWS-4seC3nQOH80s",
        appId: "1:38650588148:android:71924f14d2c9c7cfdf27a1",
        messagingSenderId: "",
        projectId: "flutter-fb-project-99db3")
  );
  runApp(MyAppFire());
}

class MyAppFire extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: FireSplash(),
    );
  }
}

class FireSplash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Get.to(LoginFire());
    });
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 30,),
      ),
    );
  }
}
