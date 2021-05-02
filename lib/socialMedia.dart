import 'package:hairdresser/facebook.dart';
import 'package:hairdresser/instagram.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatefulWidget {
  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[

            Image(
              image: AssetImage("assets/images/hairdresser.jpg"),
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
                child: Text.rich(TextSpan(children: <TextSpan>[
              TextSpan(
                text: "Sosyal Medya Adreslerimiz",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              )
            ]))),
            Divider(
              height: 45.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child:Container(
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/facebook.png"),
                        ),
                        Text("Facebook"),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Facebook()),);
                  },
                ),
                
                SizedBox(
                  width: 55.0,
                ),
                InkWell(
                child:
                Container(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/instagram.png"),
                      ),
                      Text("Instagram"),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Instagram()),);
                },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
