import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:WebView(
        initialUrl: "https://www.instagram.com/salondenizman/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}