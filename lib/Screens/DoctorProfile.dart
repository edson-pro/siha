import 'package:app/Screens/Profile.dart';
import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                const Text("Doctor Profile",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.teal)),
                Container(
                    margin: EdgeInsets.only(top: 28, right: 2),
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      // hex color
                      color: Colors.teal.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 154,
                            width: 117,
                            child:
                                Image.asset('assets/images/doctor_profile.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 5, right: 19, bottom: 9),
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
                                            style: TextStyle(
                                                letterSpacing: 0.16))),
                                    Padding(
                                        padding: EdgeInsets.only(top: 9),
                                        child: Text("Horebu Clinic",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
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
                        ])),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Bio',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Dr. Ruth is a gynocologist with 10 years of experience. She is a graduate of the University of Rwanda ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Appointment Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Preferred Date',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 200,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '12/12/2021',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: const Text(
                                  'Preferred Time',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 200,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '13 : 45',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          child: Text('Book'),
                          onPressed: () {
                            print('Hello');
                          },
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
