import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Column(
            children: [
              Container(
                height: 180,
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                decoration: BoxDecoration(),
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
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
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
                            prefixIcon:
                                Icon(Icons.mail_outline, color: Colors.black),
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
                            prefixIcon:
                                Icon(Icons.phone_outlined, color: Colors.black),
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
                            prefixIcon:
                                Icon(Icons.location_city, color: Colors.black),
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
                  Text("Change passoword",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.grey.shade200,
                          decoration: TextDecoration.underline,
                          letterSpacing: 0.16)),
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
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
