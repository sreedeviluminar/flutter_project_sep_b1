import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var name = [
    "Amal",
    "Biny",
    "Ciya",
    "Dona",
    "Emil",
    "Flemin",
    "George",
    "Hari",
    "Isra",
    "Jasmin"
  ];
  var messages = [
    "Hello",
    "How are u!",
    "Where r u?",
    "Good evening",
    "Thank U",
    "Good Night",
    "Take Care",
    "Please send me the photo",
    "TC",
    "Welcome"
  ];

  //var date_time = [10.50,11.35,3.45,6.20,5,10,4,13,11.35,3.45,6.20,5,10,4,13];
  var date_time = [
    "12.15 PM",
    "12.10 PM",
    "11.20 PM",
    "1.12 AM",
    "Yesterday",
    "Yesterday",
    "3/11/2023",
    '2/11/2023',
    "1/11/2023",
    "31/10/2023"
  ];
  var images = [
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    "https://engineering.unl.edu/images/staff/Kayla-Person.jpg",
    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    "https://engineering.unl.edu/images/staff/Kayla-Person.jpg",
    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    "https://engineering.unl.edu/images/staff/Kayla-Person.jpg",
    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  ];
  var icons = [
    Icon(Icons.done),
    Icon(
      Icons.done_all,
      color: Colors.blue,
    ),
    Icon(Icons.done),
    Icon(Icons.done_all),
    Icon(Icons.access_time),
    Icon(
      Icons.done_all,
      color: Colors.blue,
    ),
    Icon(Icons.done),
    Icon(Icons.done_all),
    Icon(Icons.done),
    Icon(Icons.access_time),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 2"),
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                    NetworkImage(images[index]),
                    //backgroundColor: Colors.primaries[index % Colors.primaries.length],
                    //backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    //child: Icon(Icons.person),
                  ),
                  title: Text(name[index]),
                  subtitle: Row(
                    children: [
                      //Icon(icons[index]),
                      icons[index],
                      Text(messages[index])
                    ],
                  ),
                  trailing: Text(date_time[index]),
                  //Text("${date_time[index]}"), if the values are not string use String interpolation
                )),
      ),
    );
  }
}
