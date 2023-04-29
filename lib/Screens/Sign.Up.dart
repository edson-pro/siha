import 'package:app/Screens/dashboard.dart';
import 'package:app/Screens/home.dart';
import 'package:app/Screens/log.in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/text.form.dart';
import '../widgets/utils.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();

    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,

      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: const Text(
      //     'Back to Login',
      //     style: TextStyle(color: Colors.blueGrey, fontSize: 18),
      //     textScaleFactor: 1,
      //   ),
      //   centerTitle: false,
      //   iconTheme: const IconThemeData(
      //     color: Colors.teal,
      //   ),
      // ),
      body: SafeArea(
          child: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //header

                Row(
                  children: const [
                    Icon(
                      Icons.monitor_heart,
                      size: 100,
                      color: Colors.teal,
                    ),
                    Text(
                      "Siha\nPATIENT",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      textScaleFactor: 1.2,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Register an Account',
                  style: TextStyle(fontSize: 30, color: Colors.blueGrey),
                  textScaleFactor: 1.2,
                ),

                const SizedBox(
                  height: 30,
                ),

                Column(
                  children: [
                    textFormField(
                        controller: name,
                        label: 'Name',
                        obscureText: false,
                        textinput: TextInputAction.next,
                        keyboard: TextInputType.text),
                    const SizedBox(
                      height: 20,
                    ),
                    textFormField(
                        controller: email,
                        label: 'Email',
                        obscureText: false,
                        textinput: TextInputAction.next,
                        keyboard: TextInputType.emailAddress),
                    const SizedBox(
                      height: 20,
                    ),
                    textFormField(
                        controller: password,
                        label: 'Your Password',
                        obscureText: true,
                        textinput: TextInputAction.done),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 30,
                ),
                alternateButton(
                    onPressed: () async {
                      try {
                        await _auth.createUserWithEmailAndPassword(
                            email: email.text.trim(),
                            password: password.text.trim());
                      } catch (e) {
                        print("$e");
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ));
                      // userSignUp(context,
                      //     email: email.text, password: password.text);
                    },
                    text: 'Register'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "Have an account?",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        //     try {
                        //   await _auth.createUserWithEmailAndPassword(
                        //       email: email.text.trim(),
                        //       password: password.text.trim());
                        // } catch (e) {
                        //   print("$e");
                        // }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogIn(),
                            ));
                      },
                      child: const Text(
                        "Back to Login",
                        style: TextStyle(color: Colors.teal, fontSize: 12),
                      ),
                    )
                  ],
                )
              ],
            )),
      )),
    );
  }
}
