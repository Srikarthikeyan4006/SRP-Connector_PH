import 'dart:ui';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Image.asset('images/women1.png'),
                height: 200.0,
              ),
              Container(
                child: Image.asset('images/women.png'),
                height: 200.0,
              ),

            ],
          )

        ],
      ),
      backgroundColor: Hexcolor('#FFFED8'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(

              children: <Widget>[
                Text(
                  'Connector_PH',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Architects',
                    color: Colors.black,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 2.5,
                  indent: 20,
                  endIndent: 0,
                ),
                Text(
                  'FIND DETAILS OF HOSPITAL NEARBY ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'ZillaSlab',
                    color: Colors.black,
                    fontSize: 20.0,

                  ),
                ),
                Text(
                  'INSTANTLY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'ZillaSlab',
                    color: Colors.black,
                    fontSize: 20.0,

                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120.0,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Material(
                elevation: 5.0,
                color: Hexcolor('#FFFA48'),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontFamily: 'Architects',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10.0),
              child: Material(
                color: Hexcolor('#FFFA48'),
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Architects',
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
