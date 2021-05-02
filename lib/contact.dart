import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Completer<GoogleMapController> _completer = Completer<GoogleMapController>();

  Map<MarkerId,Marker> _markers = <MarkerId,Marker>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 400.0,
            width: double.maxFinite,
            child: GoogleMap(
              mapType: MapType.normal,
              markers: Set<Marker>.of(_markers.values),
              initialCameraPosition: CameraPosition(
                target: LatLng(38.4938403,27.7027059),
                zoom: 17.0,
              ),
              onMapCreated: (GoogleMapController controller){
                final MarkerId markerId = MarkerId("merkez");
                final Marker marker = Marker(
                  markerId: markerId,
                  position: LatLng(38.4938403,27.7027059),
                  infoWindow: InfoWindow(
                    title: "ERKEK KUAFÖRÜ",
                    snippet: "SALON DENİZ",
                    onTap: (){
                      debugPrint("Tıklandı");
                    },
                  ),
                );
                _markers[markerId] = marker;
                _completer.complete(controller);
              },
            ),
          ),
          SizedBox(height: 25.0,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child:Container(
                    child: Column(
                      children: <Widget>[
                        Image(
                        image: AssetImage("assets/images/home.png"),
                      ),
                        Text("Adresimiz",style: TextStyle(fontSize: 22.0),),
                        Text("Acarlar Mah.Güneş Sok. No: 77/B Turgutlu-MANİSA",style: TextStyle(fontSize: 16.0),),
                      ],
                    ),
                  ),
                ),
                
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child:Container(
                    child: Column(
                      children: <Widget>[
                        Image(
                        image: AssetImage("assets/images/call.png"),
                      ),
                        Text("Telefon",style: TextStyle(fontSize: 22.0),),
                        Text("0531 211 00 53 - 0532 052 68 53",style: TextStyle(fontSize: 16.0),),
                      ],
                    ),
                  ),
                ),
              ],

            ),
        ],
      ),
      
    );
  
  }
}