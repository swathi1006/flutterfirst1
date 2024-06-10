import 'package:flutter/material.dart';
import 'package:flutterfirst/api/using_http_2/view/albumhome.dart';
import 'package:get/get.dart';

void main(){
  runApp(ApiHttp2());
}

class ApiHttp2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AlbumHome(),
    );
  }
}
