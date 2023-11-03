import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                'Registration',
                style: GoogleFonts.satisfy(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                'Enter the datas to SignUp!!',
                style: GoogleFonts.satisfy(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0,left: 15,right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Name" ,
                      prefixIcon: Icon(Icons.person),
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "UserName" ,
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'PassWord',
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Confirm PassWord',
                      prefixIcon: Icon(Icons.password),
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      )),
                ),
              ),
              MaterialButton(
                height: 50,
                minWidth: 170,
                onPressed: () {},
                color: Colors.green,
                shape: const StadiumBorder(),
                child: const Text('Login'),
              ),
              TextButton(
                  onPressed: () {},
                  child: RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          children: [
                            TextSpan(text: "Don't Have an Account? "),
                            TextSpan(
                                text: "SignUp!!",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ])))
            ],
          ),
        ),
      ),
    );
  }
}
