import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/using%20shared%20preference/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpShared extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpShared> {
  final  emailContrl = TextEditingController();
  final  passContrl = TextEditingController();

  late SharedPreferences preferencess;
  late bool registered;

  @override
  void initState() {
   check_user_alredy_registered();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            TextField(
              controller: emailContrl,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passContrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: (){
                storeDataandRegister(emailContrl.text,passContrl.text);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Sign Up'),
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginShared()));
                },
                child: const Text("Already Registered? Login! "))
          ],
        ),
      ),
    );
  }

  Future<void> storeDataandRegister(String email, String password) async{
    preferencess = await SharedPreferences.getInstance();
    preferencess.setString('registereduname', email);
    preferencess.setBool('egisteredUser', true);
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginShared()));
  }

  void check_user_alredy_registered() async{
    preferencess = await SharedPreferences.getInstance();
    registered = preferencess.getBool('RegisteredUser') ?? false;

    if(registered == true){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginShared()));
    }
  }
}
