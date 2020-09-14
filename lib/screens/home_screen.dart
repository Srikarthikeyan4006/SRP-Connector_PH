import 'package:flutter/material.dart';
import 'package:connectorph/constants.dart';
import 'package:geocoder/geocoder.dart';
import  'package:geolocator/geolocator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:connectorph/screens/welcome_screen.dart';
import 'package:hexcolor/hexcolor.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String CurrentUser;
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getLocation();
    getCurrentUser();
  }
  void getLocation() async{
    Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final coordinates = new Coordinates(
        position.latitude, position.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(
        coordinates);
    var first = addresses.first;
    print('${first.subAdminArea}');
  }
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        CurrentUser=user.email;
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
               _auth.signOut();
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
              }),
        ],
        title: Text('sfvsd'),
        backgroundColor:Hexcolor('#FFFED8') ,
      ),
      body: SafeArea(
        child: Container(
            color:Hexcolor('#FFFED8')
        )
      )
    );
  }
}
