import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: Splash(),));
}
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      // backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          ///to set background image for body
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1186290936/photo/leaf-texture-background-abstract-foliage-tropical-pattern-natu.jpg?s=612x612&w=0&k=20&c=F_CvjOuq7637JypUKkaDBZBXvxy9bRibgr4wF88Y5K8="))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.dark_mode,
              //   size: 100,
              //   color: Colors.white,
              // ),
              Image.asset(
                "assets/icons/butterfly.png",
                height: 200,
                width: 200,
              ),
              //Image.network("src"),
              //Image(image: AssetImage("assets/icons/butterfly.png"),height: 200,width: 200,),
              //Image(image: NetworkImage("https://plus.unsplash.com/premium_photo-1690440686747-6fa153013e4c?auto=format&fit=crop&q=60&w=600&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8")),
              Text(
                "AppName",
                // style: TextStyle(
                //     fontSize: 30,
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold),
                style: GoogleFonts.greatVibes(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}