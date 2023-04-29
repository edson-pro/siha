import 'package:app/Screens/Sign.Up.dart';
import 'package:app/Screens/dashboard.dart';
import 'package:app/widgets/text.form.dart';
import 'package:app/widgets/utils.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
          child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.monitor_heart,
                    size: 100,
                    color: Colors.teal,
                  ),
                  Text(
                    "Siha\nPATIENT",
                    style: TextStyle(color: Colors.blueGrey),
                    textScaleFactor: 2,
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Column(
                children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(''),
                  TextButton(
                      onPressed: () {
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) => const Recovery(),
                        // ));
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              // ButtonCustom(text: 'Log In', onPressed: () {}),
              alternateButton(
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Dashboard(),
                        ));
                    // userSgnIn(context,
                    //     email: email.text, password: password.text);
                  },
                  text: 'Log In'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Register(),
                          ));
                    },
                    child: const Text(
                      "Create Now.",
                      style: TextStyle(color: Colors.teal, fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
