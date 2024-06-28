import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterfirst/api/api_post_get/api_service.dart';


class ApiHome2 extends StatelessWidget {

  final ApiServiceGetPost apiService = ApiServiceGetPost();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample"),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(onPressed: (){
              apiService.sendData();
            },
              child: Text("Send data"),),
            SizedBox(height: 30,),
            MaterialButton(onPressed: (){
              apiService.fetchData();
            },
              child: Text("display data"),),
            SizedBox(height: 30,),
              Text("${apiService.fieldvalue}"),
          ],
        ),
      ),
    );
  }
}
