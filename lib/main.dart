import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:connectorph/screens/welcome_screen.dart';
import 'package:connectorph/screens/login_screen.dart';
import 'package:connectorph/screens/registration_screen.dart';
import 'package:connectorph/screens/home_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(connectorph());
}

class connectorph extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  String s=(FirebaseAuth.instance.currentUser!=null)?'chat':'welcome';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),

      initialRoute:s,
      routes: {
        'welcome':(context) => WelcomeScreen(),
        'login':(context) => LoginScreen(),
        'register':(context) => RegistrationScreen(),
        'chat':(context)=> ChatScreen(),
      },
    );
  }
}
