import 'package:flutter/material.dart';
import 'package:flutter_project_sep_b1/home.dart';
import 'package:flutter_project_sep_b1/signupPage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  String username = "admin";
  String password = 'abc123';

  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
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
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: user_controller,
                decoration: InputDecoration(
                    labelText: "UserName",
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: InputDecoration(
                    labelText: 'PassWord',
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
            MaterialButton(
              height: 50,
              minWidth: 170,
              onPressed: () {
                if (username == user_controller.text &&
                    password == pass_controller.text) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }
                user_controller.text = "";
                pass_controller.text = "";
              },
              color: Colors.green,
              shape: const StadiumBorder(),
              child: const Text('Login'),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        children: [
                      TextSpan(text: "Don't Have an Account? "),
                      TextSpan(
                          text: "SignUp!!",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]))),
         //   Divider(thickness: 70,color: Colors.black,)
          ],
        ),
      ),
    );
  }
}
