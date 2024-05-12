import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/using%20shared%20preference/view/home.dart';
import 'package:flutterfirst/database/local%20storage/using%20shared%20preference/view/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginShared extends StatefulWidget {
  const LoginShared({super.key});

  @override
  State<LoginShared> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {

  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  late SharedPreferences preferences;
  late bool loggedIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: (){},
              child: Text("Login"),
              color: Colors.green,
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpShared()));
            },
                child: Text("Not a user? Register here"))
          ],
        ),
      ),
    );
  }

  Future<void> storedDataandLogin(String email, String password) async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString("username", email);
    preferences.setBool("userLoggedIn", true);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeShared())
    );
  }

  void check_user_alredy_loggedin()async{
    preferences = await SharedPreferences.getInstance();
    loggedIn = preferences.getBool('userLoggedIn') ?? false;

    if(loggedIn == true){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomeShared()));
    }
  }

}
