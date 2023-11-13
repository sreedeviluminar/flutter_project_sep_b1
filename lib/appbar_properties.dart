import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppbarProperty(),));
}
class AppbarProperty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Appbar"),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 15,),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("New BroadCast")),
              PopupMenuItem(child: Text("Linked Device")),
              PopupMenuItem(child: Text("Settings"))
            ];
          })

        ],
      ),
    );
  }
}
