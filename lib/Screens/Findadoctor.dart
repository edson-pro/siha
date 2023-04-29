// import 'package:app/widgets/utils.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/Screens/DoctorProfile.dart';
import 'package:app/Screens/Profile.dart';
import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';

class Findadoctor extends StatefulWidget {
  const Findadoctor({super.key});

  // const Findadoctor(User? user, {super.key});

  @override
  State<Findadoctor> createState() => FindadoctorState();
}

class FindadoctorState extends State<Findadoctor> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        )),
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "James, K",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                          width:
                              10), // add some space between the text and image
                      SizedBox(
                        width: 30, // set the width of the image
                        height: 30, // set the height of the image
                        child: Image.asset('assets/images/picture.png'),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Find a doctor",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.teal)),
                  ],
                ),
                Container(
                  // padding: const EdgeInsets.all(3),
                  height: 40,
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      hintText: "Search Your tips",
                      suffixIcon: Icon(Icons.search, color: Colors.teal),
                      hintStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  height: 400, // Replace with the desired height
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DrsCards(),
                        DrsCards(),
                        DrsCards(),
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

  Container DrsCards() {
    return Container(
        margin: EdgeInsets.only(top: 28, right: 2),
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
          // hex color
          color: Colors.teal.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DoctorProfile()),
            );
          },
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 154,
              width: 117,
              child: Image.asset('assets/images/doctor1.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
                padding: EdgeInsets.only(top: 5, right: 19, bottom: 9),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Dr. Ruth",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              letterSpacing: 0.23,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Padding(
                          padding: EdgeInsets.only(top: 7),
                          child: Text("Gynocologist",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.16))),
                      Padding(
                          padding: EdgeInsets.only(top: 9),
                          child: Text("Remera, Kigali",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(letterSpacing: 0.16))),
                      Padding(
                          padding: EdgeInsets.only(top: 9),
                          child: Text("Horebu Clinic",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  letterSpacing: 0.16))),
                      Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Text("Request Appointment",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  letterSpacing: 0.16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal)))
                    ]))
          ]),
        ));
  }
}
