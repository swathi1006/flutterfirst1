import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewEx extends StatefulWidget {


  @override
  State<WebViewEx> createState() => _WebViewExState();
}

class _WebViewExState extends State<WebViewEx> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.google.com/search?sca_esv=f40bbf4ff6228df6&sxsrf=ACQVn0-I1kW4T-TGe_rqgdZQ-I2PdMjAbA:1714196667471&q=most+popular+tourist+destinations&uds=AMwkrPt5DqKoEcEgTvJpB2mLvFtA-heJhCZqlSvkcvwHvDnOnAwAkPm_nd0k6TcxJ5GEoDt_fJ1ybXuOgQTMOfVnQrMXJFB8ZOXS3BgQjr7-Z-CsBlmc6BBSdPR3grPyVYPd5OiO-2Gqh41cucpiN-lS9ba5D1ZSf93_3VU91O8uewsOQ1a_m_Mj7m2YeWH-Fl9EKyZHGQOIYWJaulbiXvtBEsG7amjDQGQo-Qu8PPTmS6ob8ZaqF_CXlcflECfoG_GuwTmRY3YTHEqaZPEtxf073z6olHBfMAAmnedfzJ3jMS_Qx6W1ggnwgLTpx_Cn-t-paekOYQ0mVbgX7Ut2HAoq_LOsnI0BQw&udm=2&prmd=invsmbtz&sa=X&ved=2ahUKEwj18MGb2OGFAxURoGMGHQrKDz4QtKgLegQIERAB&biw=828&bih=622&dpr=1.25"));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("WebView"),
         backgroundColor: Colors.green,
       ),
      body: WebViewWidget(
          controller: controller),
    );
  }
}
