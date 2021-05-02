import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hairdresser/about.dart';
import 'package:hairdresser/appointment.dart';
import 'package:hairdresser/contact.dart';
import 'package:hairdresser/login.dart';
import 'package:hairdresser/ourServices.dart';
import 'package:hairdresser/portfolio.dart';
import 'package:hairdresser/socialMedia.dart';


// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  // ignore: unused_field
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    return MaterialApp(
      title: "Dashboard",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Salon Deniz"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.exit_to_app),onPressed:()=>{
              _auth.signOut().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false),),

            },),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Image(image: AssetImage("assets/images/hairdresser.jpg"),),
              SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
         
              
              children: <Widget>[
                InkWell(
              child:Container(
                
              


              decoration: BoxDecoration(
                
                
                gradient: LinearGradient(
                  
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.blue[400],
                  Colors.blue[100],
                  
                  
                ]),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0)
                
              ),
              
            
              alignment: Alignment(0, 0),
              width: 120.0,
              height: 100.0,
              child: Text("Randevu Al",style: TextStyle(fontSize: 15.0),),
                
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Appointment()),);
            },
            ),
            SizedBox(width: 15.0,),
            
            InkWell(
              child:Container(

              decoration: BoxDecoration(
                
                
                gradient: LinearGradient(
                  
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.blue[400],
                  Colors.blue[100],
                  
                  
                ]),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0)
                
              ),
              
            
              alignment: Alignment(0, 0),
              width: 120.0,
              height: 100.0,
              child: Text("Hizmetlerimiz",style: TextStyle(fontSize: 15.0),),
                
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>OurServices()),);
            },
            ),

            SizedBox(width: 15.0,),
            
            InkWell(
              child:Container(
                
              


              decoration: BoxDecoration(
                
                
                gradient: LinearGradient(
                  
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.blue[400],
                  Colors.blue[100],
                  
                  
                ]),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0)
                
              ),
              
            
              alignment: Alignment(0, 0),
              width: 120.0,
              height: 100.0,
              child: Text("Portfolio",style: TextStyle(fontSize: 15.0),),
                
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Portfolio()),);
            },
            ),

            
            
            
            
            

            
            ],
            
            ),

            SizedBox(height: 25.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
         
              
              children: <Widget>[
                InkWell(
              child:Container(
                
              


              decoration: BoxDecoration(
                
                
                gradient: LinearGradient(
                  
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.blue[400],
                  Colors.blue[100],
                  
                  
                ]),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0)
                
              ),
              
            
              alignment: Alignment(0, 0),
              width: 120.0,
              height: 100.0,
              child: Text("İletişim",style: TextStyle(fontSize: 15.0),),
                
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Contact()),);
            },
            ),
            SizedBox(width: 15.0,),
            
            InkWell(
              child:Container(

              decoration: BoxDecoration(
                
                
                gradient: LinearGradient(
                  
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.blue[400],
                  Colors.blue[100],
                  
                  
                ]),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0)
                
              ),
              
            
              alignment: Alignment(0, 0),
              width: 120.0,
              height: 100.0,
              child: Text("Hakkımızda",style: TextStyle(fontSize: 15.0),),
                
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>About()),);
            },
            ),

            SizedBox(width: 15.0,),
            
            InkWell(
              child:Container(
                
              


              decoration: BoxDecoration(
                
                
                gradient: LinearGradient(
                  
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.blue[400],
                  Colors.blue[100],
                  
                  
                ]),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.0)
                
              ),
              
            
              alignment: Alignment(0, 0),
              width: 120.0,
              height: 100.0,
              child: Text("Sosyal Medya",style: TextStyle(fontSize: 15.0),),
                
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SocialMedia()),);
            },
            ),

            
            
            
            
            

            
            ],
            
            ),


            ],
          ),
        ),
      ),
    );
  }
}
