import 'package:flutter/material.dart';
import 'package:flutter_project_sep_b1/home.dart';

void main() {
  runApp(MaterialApp(home: Stateful_Reg()));
}

class Stateful_Reg extends StatefulWidget {
  @override
  State<Stateful_Reg> createState() => _Stateful_RegState();
}

class _Stateful_RegState extends State<Stateful_Reg> {
  final namecntrl = TextEditingController();
  final passcntrl = TextEditingController();
  final validkey = GlobalKey<FormState>();
  String? pwd;
  bool showpwd = true;

  // key for the form to validate its state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration PAGE"),
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
                  "Registration Page",
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: namecntrl,
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains('@') ||
                        !email.contains('gmail.com')) {
                      return "InValid email";
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Username"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: showpwd,
                  obscuringCharacter: '*',
                  controller: passcntrl,
                  // value that we typed in form field will stored in password
                  validator: (password) {
                    pwd = password;
                    if (password!.isEmpty || password.length < 6) {
                      return "Password must not be empty or length should be greater than 6";
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpwd == true) {
                                showpwd = false;
                              } else {
                                showpwd = true;
                              }
                            });
                          },
                          icon: Icon(showpwd == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      border: OutlineInputBorder(),
                      hintText: "Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  // value that we typed in form field will stored in confirmpassword
                  validator: (confirmpassword) {
                    if (confirmpassword!.isEmpty || pwd != confirmpassword) {
                      return "Password must be same";
                    }
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Confirm Password"),
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
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Invalid Email/Password")));
                    }
                    // namecntrl.clear();
                    //passcntrl.clear();
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
