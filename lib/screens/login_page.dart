import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/home1.dart';
import 'package:flutterfirst/utils/const_snackbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterfirst/screens/registration.dart';
import 'package:flutterfirst/utils/mycolors.dart';
import 'package:flutterfirst/utils/textThemes.dart';

import 'home1.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var pwd_visibility = true;
  String username = "admin";
  String password = "abc123";

  var userController = TextEditingController();
  var pwdController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userController.dispose();
    pwdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
      //to avoid scrollable action
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(height: 50), // Adding space at the top
              Text("LogIn",
                style: MyTextThemes.textHeading),
              Text("Login To Your Account",
                style: GoogleFonts.sahitya(
                    fontSize: 25   ,
                    fontWeight:FontWeight.bold,
                    color: Colors.black54),
              ),
               TextField(
                controller: userController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "Enter Your Email"
                ),),

              const SizedBox(height: 30,),

              TextFormField(
                controller: pwdController ,
                obscureText:pwd_visibility ,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.password_outlined),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(pwd_visibility==true){
                          pwd_visibility=false;
                        }else{
                          pwd_visibility=true;
                        }
                      });
                    }, icon: Icon(
                        pwd_visibility==true? Icons.visibility_off : Icons.visibility
                    )),
                    border: const OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    helperText: "Password must contain Upper and lowercase letters"
                ),),
                    const SizedBox(height: 30,),
              /*
           ElevatedButton(onPressed: (){},
             child: const Text("LogIn"),
           style: ElevatedButton.styleFrom(
             backgroundColor: Colors.green,
           ),),
          */
              MaterialButton(
                onPressed: (){
                  if(username==userController.text && password== pwdController.text){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage1()));
                    successSnackbar(context);
                  }else{
                    errorSnackbar(context);
                  }
                  userController.clear();
                  pwdController.clear();
                },
                color: MyColors.basicColor,
                minWidth: 200,
                shape: const StadiumBorder(),
                child: Text("Login", style: GoogleFonts.sahitya(
                    fontSize: 20,
                    fontWeight:FontWeight.bold,
                    color: Colors.white),),),

              const SizedBox(height: 30),

              RichText(text:  TextSpan(
                  text: "Not a User? ",
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black),
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                          },
                        text: "SignUp",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black
                        )
                    )
                  ])),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              // Adding space at the bottom (20% of screen height)
              Image.network("https://static.vecteezy.com/system/resources/thumbnails/011/976/274/small_2x/stick-figures-welcome-free-vector.jpg",
                fit: BoxFit.cover,),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
