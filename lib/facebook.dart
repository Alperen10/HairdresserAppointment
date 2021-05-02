import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WebView(
        initialUrl: "https://tr-tr.facebook.com/pages/category/Barber-Shop/SaloN-Deniz-Hairdecoration-G%C3%BCzellik-Erkek-Kuaf%C3%B6r%C3%BC--1417929135131656/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}