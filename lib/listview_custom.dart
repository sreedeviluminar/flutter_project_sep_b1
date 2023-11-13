import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView4(),
  ));
}

class ListView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Custom"),
        ),
        body: ListView.custom(
          // childrenDelegate: SliverChildListDelegate(
          //     [
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          //   Card(child: Center(child: Text("Hello"),),),
          // ]
          //  List.generate(10, (index) => const Card(child: Center(child: Text("Hello"),),),)
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/grapes.png"),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name     :Garpes"),
                            Text("Quantity :2 kg"),
                            Text("Price    :\$100/Kg")
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: const StadiumBorder(),
                          color: Colors.brown,
                          minWidth: 120,
                          height: 40,
                          child: const Text("Add to Card",
                            style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  )),
        ));
  }
}
