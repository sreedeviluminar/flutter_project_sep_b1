import 'package:flutter/material.dart';
import 'package:flutter_project_sep_b1/home.dart';

void main() {
  runApp(MaterialApp(
    home: Stateful_Login(),
  ));
}

class Stateful_Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Stateful_LoginState();
}

class _Stateful_LoginState extends State<Stateful_Login> {
  final validkey = GlobalKey<FormState>(); // key for the form to validate its state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN PAGE"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: validkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login Page",
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (email) {
                    if (email!.isEmpty || !email.contains('@') ||
                        !email.contains('gmail.com')) {
                      return "InValid email";
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Username"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  // value that we typed in form field will stored in email
                  validator: (password) {

                    if (password!.isEmpty || password.length < 6) {
                      return "Password must not be empty or length should be greater than 6";
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: () {
                    final valid = validkey.currentState!.validate();
                    if (valid == true) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                             backgroundColor: Colors.red,
                              content: Text("Invalid Email/Password")));
                    }
                  },
                  color: Colors.green,
                  shape: const StadiumBorder(),
                  child: const Text("Login"),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text("Not a User? Register Here!!"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
