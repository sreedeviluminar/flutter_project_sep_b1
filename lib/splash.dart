import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splash(),));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Icon(Icons.dark_mode,size: 100,color: Colors.white,),
      ),
    );
  }
}