import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: ListView(
          children: [
            Image(image: AssetImage("assets/images/p1.jpg"),),
            SizedBox(height: 10.0,),
            Image(image: AssetImage("assets/images/p2.jpg"),),
            SizedBox(height: 10.0,),
            Image(image: AssetImage("assets/images/p3.jpg"),),
            SizedBox(height: 10.0,),
            Image(image: AssetImage("assets/images/p4.jpg"),),
            SizedBox(height: 10.0,),
            Image(image: AssetImage("assets/images/p5.jpg"),),
            SizedBox(height: 10.0,),
            Image(image: AssetImage("assets/images/p6.jpg"),),

          ],
        ),
      )
    );
  }
}