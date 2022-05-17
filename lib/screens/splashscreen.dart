import 'dart:async';

import 'package:blood_donation_app/screens/navagationpage.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Navgationpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 300,
              child: Image.asset('images/injection.png'),
            ),
          ),
          Text(
            "Blood Donation",
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
