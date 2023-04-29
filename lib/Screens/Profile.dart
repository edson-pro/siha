import 'package:app/Screens/EditProfile.dart';
import 'package:app/Screens/activity.dart';
import 'package:app/Screens/changePassword.dart';
import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        Image.asset(
                          'assets/images/picture.png',
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "James",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text("@Jamas21",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w100)),
                          ],
                        )
                      ]),
                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white)
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.teal.shade200),
                            ),
                            child: Text('Profile',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontWeight: FontWeight.bold)),
                            onPressed: () => null,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.teal.shade300),
                            ),
                            child: Text('Your activities',
                                style: TextStyle(color: Colors.blue.shade900)),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ActivityOne()),
                              )
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name'),
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade500,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500, width: 0.1),
                                ),
                                hintText: "James",
                                prefixIcon: Icon(Icons.account_circle_outlined,
                                    color: Colors.black),
                                hintStyle: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ]),
                  ),
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email Address'),
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade500,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500, width: 0.1),
                                ),
                                hintText: "james@gmail.com",
                                prefixIcon: Icon(Icons.mail_outline,
                                    color: Colors.black),
                                hintStyle: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ]),
                  ),
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone number'),
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade500,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500, width: 0.1),
                                ),
                                hintText: "+250785475869",
                                prefixIcon: Icon(Icons.phone_outlined,
                                    color: Colors.black),
                                hintStyle: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ]),
                  ),
                  Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Live'),
                          Container(
                            height: 40,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade500,
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500, width: 0.1),
                                ),
                                hintText: "Kigali Rwanda",
                                prefixIcon: Icon(Icons.location_city,
                                    color: Colors.black),
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
                      InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChangePassword(),
                              )),
                        },
                        child: Text("Change passoword",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey.shade200,
                                decoration: TextDecoration.underline,
                                letterSpacing: 0.16)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditProfile(),
                              )),
                        },
                        child: Text('Edit profile'),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ]),
      bottomNavigationBar: BottomNav(),
    );
  }
}
