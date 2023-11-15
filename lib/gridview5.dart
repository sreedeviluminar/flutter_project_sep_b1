import 'package:flutter/material.dart';

class Gridview5 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            childrenDelegate: SliverChildBuilderDelegate(childCount: 20,
          (context, index) =>Container(
              child: Image.asset("assets/images/pic1.jpg",fit: BoxFit.fill,)),
            ))
      // GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      //     childrenDelegate: SliverChildListDelegate(List.generate(20, (index) => Card(
      //       child: Text("hello"),
      //     ))))
    );
  }
}
