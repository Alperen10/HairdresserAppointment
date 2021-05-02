import 'package:flutter/material.dart';

class OurServices extends StatefulWidget {
  @override
  _OurServicesState createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/s1.jpg"),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Center(
              child: Text(
                "Saç-Sakal Traşı",
                style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(height: 15.0,),
          Container(
            child: Center(
              child: Text(
                "İzin verin işinde usta kuaförlerimiz, ",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),

          Container(
            child: Center(
              child: Text(
                "mutluluğunuz için en yeni kesim",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
          
          Container(
            child: Center(
              child: Text(
                "teknikleriyle yaratıcılıklarını sergilesinler..",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),


          SizedBox(height:15.0,),
          Image(
            image: AssetImage("assets/images/s2.jpg"),
          ),
          SizedBox(height: 15.0,),
          Container(
            child: Center(
              child: Text(
                "Lazer Epilasyon",
                style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
              ),
            ),
            
          ),
          Divider(height: 15.0,),
          Container(
            child: Center(
              child: Text(
                "İstenmeyen bölgelerinizdeki kıllardan acısız,",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            
          ),
          Container(
            child: Center(
              child: Text(
                "ağrısız lazer epilasyon seanslarımız ile kurtulun.",
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            
          ),


        ],
      ),
    ));
  }
}
