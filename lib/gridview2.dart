import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Gridview2()));
}

class Gridview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120),
            itemBuilder: (context,index)=> Container(
              color: Colors.black,
              child: Column(
                children: [
                  Image.asset("assets/pic1.jpg"),
                  Text("Nature",style:TextStyle(color: Colors.white),)
                ],
              ),
            ),)

        // body: GridView.builder(itemCount: 20,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 4, crossAxisSpacing: 10, mainAxisSpacing: 10),
        //     itemBuilder: (context, index) => Container(
        //           color: Colors.amber,
        //           child: Center(child: Text("user$index +1")),
        //         )),
        );
  }
}
