import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,),
          //   children: List.generate(20, (index) => Card(
          //     child: Image.asset("assets/pic1.jpg"),
          //   )),
          // ),

          GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            mainAxisExtent: 120,
            mainAxisSpacing: 40,
            crossAxisSpacing: 10),
        children: List.generate(
          20,
          (index) => Container(
            color: Colors.black,
            child: Image.asset("assets/pic1.jpg"),
          ),
        ),
      ),
    );
  }
}
