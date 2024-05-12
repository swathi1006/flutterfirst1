import 'package:flutter/material.dart';
import 'package:flutterfirst/database/local%20storage/using%20shared%20preference/view/login.dart';

class SignUpShared extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpShared> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: (){},
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Sign Up'),
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginShared()));
                },
                child: Text("Already Registered? Login! "))
          ],
        ),
      ),
    );
  }
}
