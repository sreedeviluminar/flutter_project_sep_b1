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
          title: const Text('ListView Separated'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: SizedBox(height: 100, child: Text("Months")),
              );
            },
            separatorBuilder: (context, index) {
              if (index % 3 == 0) {
                return const Card(
                  child: Text("Advertisement"),
                  color: Colors.red,
                );
              } else {
                return SizedBox();
              }
            },
            itemCount: 10));
  }
}
