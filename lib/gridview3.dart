import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview3(),));
}
class Gridview3 extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      GridView.count(crossAxisCount: 4,children: List.generate(20, (index) => Column(
          children: [
                   Expanded(child: Image.asset("assets/images/pic1.jpg",fit: BoxFit.fill,)),
                  Expanded(child: Text("Nature",))
                ],
      ))),
    );
  }
}
