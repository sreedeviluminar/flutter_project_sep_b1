import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project_sep_b1/loginpage.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Splash2(),
  ));
}

class Splash2 extends StatefulWidget {
  @override
  State<Splash2> createState() => _Splash2State(); // create a mutable state for this widget
}

class _Splash2State extends State<Splash2> {

 @override
  void initState() {
   Timer(const Duration(seconds: 4), () {
     Navigator.pushReplacement(context, MaterialPageRoute(
         builder: (context) => LoginPage()));
   });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child:
          // Lottie.asset("assets/animation/anim.json", height: 350, width: 350),
         Lottie.network("https://lottie.host/68f45833-2ff0-4f81-9260-7ea4726512b5/hVgeKbcBw2.json")
      ),
    );
  }
}
