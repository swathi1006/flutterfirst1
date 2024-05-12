import 'package:flutter/material.dart';
import 'package:flutterfirst/state%20management/using%20multiproviders/controller/count_controller2.dart';
import 'package:flutterfirst/state%20management/using%20multiproviders/controller/logincontroller.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(Multi_Provider());
}

class Multi_Provider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider2()),
        ChangeNotifierProvider(create: (context) =>  Login_Provider())
      ],
      child: MyScreen(),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value"),
            ElevatedButton(
                onPressed: (){
                  Provider.of<CounterProvider2>(context,listen: false).incrementCounter();
                },
                child: Text("Increment Counter")),
            Text("Count : ${Provider.of<CounterProvider2>(context).counter.value}"),
            SizedBox(height: 20,),
            Text("Auth Details"),
            ElevatedButton(
                onPressed: (){
                  Provider.of<Login_Provider>(context,listen: false).login?
                  Provider.of<Login_Provider>(context,listen: false).loggedout():
                  Provider.of<Login_Provider>(context,listen: false).loggedin();
                },
                child: Text("Switch LogIn")),
            Consumer<Login_Provider>(builder: (context, authProvide,widget){
              return Text(
                  "User is ${authProvide.login? "Login":"Logged Out"}");
            })
          ],
        ),
      ),
    );
  }
}
