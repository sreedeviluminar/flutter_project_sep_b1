import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
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
      body: Center(
        child: Column(
          children: [
            Text(
              'Login',
              style: GoogleFonts.satisfy(
                  fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              'Welcome Back! Login With Your Credentials!!',
              style: GoogleFonts.satisfy(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "UserName" ,
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'PassWord',
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder()),
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
    );
  }
}
