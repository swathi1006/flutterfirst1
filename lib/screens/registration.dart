
import 'package:flutter/material.dart';
import 'package:flutterfirst/screens/login_page.dart';
import 'package:flutterfirst/utils/textThemes.dart';
import '../utils/mycolors.dart';

class RegistrationPage extends StatefulWidget {

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
///this function will create a mutable state of registration page
}
/// mutable state of registrationpage   here we can create and rebuild widget tree using initState() and setState() function

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController passController = TextEditingController();

  var formkey = GlobalKey<FormState>();
 // formkey used to monitor the state of entire form and validate it

  var pwd_visibility=true;
  var pwd_visibilityc=true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passController.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //to avoid scrollable action
          //physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key:formkey,// if we do not set key here validation will not occur
              child: Column(
                children: [
                  const SizedBox(height: 50), // Adding space at the top
                  Text(
                      "SignUp ",
                      style: MyTextThemes.textHeading
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                      "Create Your Account",
                      style: MyTextThemes.bodyTextStyle
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "UserName",
                      hintText: 'Enter your Username here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator:(email){
                      if(email!.isEmpty || !email.contains('@')){
                        return "email must be a valid email";
                      }else{
                        return null;
                      }
                    } ,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined),
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: 'Enter your email here',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText:pwd_visibility ,
                    obscuringCharacter: '*',
                    validator: (password){
                      if(password!.isEmpty || password.length < 6) {
                        return 'Password is empty or / check the length';
                      }else{
                        return  null;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
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
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: 'Enter your password here',
                      helperText:
                      'Password must contain upper and lowercase letters',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (confirmpassword){
                      if(confirmpassword!.isEmpty || confirmpassword != passController.text){
                        return "password empty/mismatch";
                      }else{
                        return null;
                      }
                    },
                    obscureText:pwd_visibilityc ,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(pwd_visibilityc==true){
                            pwd_visibilityc=false;
                          }else{
                            pwd_visibilityc=true;
                          }
                        });
                      }, icon: Icon(
                          pwd_visibilityc==true? Icons.visibility_off : Icons.visibility
                      )),
                      border: OutlineInputBorder(),
                      labelText: "Confirm Password",
                      hintText: 'Confirm your password here',

                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    onPressed: () {
                      var valid = formkey.currentState!.validate();
                      if(valid == true){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>LoginPage()));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Registration failed")));
                      }
                    },
                    color: MyColors.basicColor,
                    minWidth: 200,
                    shape: const StadiumBorder(),
                    child: const Text("Register"),
                  ),
                  const SizedBox(height: 20), // Adjusted spacer
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                          "Already Registered?? SignIn Here!!",
                          style: MyTextThemes.bodyTextStyle))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
