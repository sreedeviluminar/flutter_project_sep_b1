import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY Contacts"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text("Abhin"),
              subtitle: Text('09876543211'),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),
          ListTile(
            title: Text("Bibin"),
            subtitle: Text('09876543211'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/06/15/Chris-Pratt.jpg?quality=75&width=640&crop=3%3A2%2Csmart&auto=webp"),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Abhin"),
            subtitle: Text('09876543211'),
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.person),
            ),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text("Bibin"),
            subtitle: Row(
              children: [
                Icon(Icons.done_all, color: Colors.blue),
                Text("Hi, R u There???")
              ],
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/06/15/Chris-Pratt.jpg?quality=75&width=640&crop=3%3A2%2Csmart&auto=webp"),
            ),
            trailing: Text("12.27 PM"),
          ),
          ListTile(
            title: Text("Bibin"),
            subtitle: Row(
              children: [Icon(Icons.done_all), Text("Hi, R u There???")],
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://static.independent.co.uk/s3fs-public/thumbnails/image/2015/06/06/15/Chris-Pratt.jpg?quality=75&width=640&crop=3%3A2%2Csmart&auto=webp"),
            ),
            trailing: Column(
              children: [
                Text("Yesterday"),
                CircleAvatar(
                  radius: 14,
                  // minRadius: 5,
                  // maxRadius: 12,
                  backgroundColor: Colors.lightGreenAccent,
                  child: Text('2'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft,
                  //  center: Alignment.topCenter,
                  //stops: [.5, 1],
                  colors: [
                    Colors.green,
                    Colors.yellow,
                    Colors.red,
                    Colors.blue
                  ],
                ).createShader(bounds),
                child: FaIcon(FontAwesomeIcons.google),
              ),
              FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
              ),
              FaIcon(FontAwesomeIcons.instagram),
              FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.blue,
              )
            ],
          )
        ],
      ),
    );
  }
}

