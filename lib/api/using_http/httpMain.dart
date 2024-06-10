import 'package:flutter/material.dart';
import 'package:flutterfirst/api/using_http/view/producthome.dart';
import 'package:get/get.dart';

void main(){
  runApp(ApiHttp());
}

class ApiHttp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ProductHome(),
    );
  }
}
