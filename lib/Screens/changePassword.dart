// import 'package:app/widgets/utils.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:app/Screens/activity.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  // const ChangePassword(User? user, {super.key});

  @override
  State<ChangePassword> createState() => ChangePasswordState();
}

class ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Column(
              children: [
                Container(
                  height: 180,
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/picture.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Current Password'),
                                      Container(
                                        height: 40,
                                        margin: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: TextField(
                                          obscureText:
                                              true, // this line makes the text input hidden
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade500,
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade500,
                                                width: 0.1,
                                              ),
                                            ),
                                            hintText: "mfy@#dhaod",
                                            prefixIcon: Icon(
                                              Icons.lock_outline,
                                              color: Colors.black,
                                            ),
                                            hintStyle: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                    ]),
                              ),
                              Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('New Password'),
                                      Container(
                                        height: 40,
                                        margin: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: TextField(
                                          obscureText:
                                              true, // this line makes the text input hidden
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade500,
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade500,
                                                width: 0.1,
                                              ),
                                            ),
                                            hintText: "mfy@#dhaod",
                                            prefixIcon: Icon(
                                              Icons.lock_outline,
                                              color: Colors.black,
                                            ),
                                            hintStyle: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                    ]),
                              ),
                              Container(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Repeat Password'),
                                      Container(
                                        height: 40,
                                        margin: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: TextField(
                                          obscureText:
                                              true, // this line makes the text input hidden
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey.shade500,
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade500,
                                                width: 0.1,
                                              ),
                                            ),
                                            hintText: "mfy@#dhaod",
                                            prefixIcon: Icon(
                                              Icons.lock_outline,
                                              color: Colors.black,
                                            ),
                                            hintStyle: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                    ]),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    child: Text('Edit profile'),
                                    onPressed: () {
                                      print('Hello');
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
