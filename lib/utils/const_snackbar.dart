import 'package:flutter/material.dart';

errorSnackbar(context)=>
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Failed"),
          backgroundColor: Colors.red,));

successSnackbar(context)=>
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Success!"),
          backgroundColor: Colors.green,));