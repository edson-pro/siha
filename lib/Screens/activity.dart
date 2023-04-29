// import 'package:app/widgets/utils.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/Screens/activityThree.dart';
import 'package:app/Screens/activityTwo.dart';
import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';

class ActivityOne extends StatefulWidget {
  const ActivityOne({super.key});

  // const ActivityOne(User? user, {super.key});

  @override
  State<ActivityOne> createState() => ActivityOneState();
}

class ActivityOneState extends State<ActivityOne> {
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
                    height: 100,
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: Row(
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
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: Colors.white)
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                ),
                                child: Text('Pending',
                                    style: TextStyle(
                                        color: Colors.indigo.shade900)),
                                onPressed: () => null,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey.shade600),
                                ),
                                child: Text('Confirmed',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ActivityTwo(),
                                      )),
                                },
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.grey.shade600),
                                ),
                                child: Text('Denied',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ActivityThree(),
                                      )),
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 15, 15, 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                    ),
                    child: Column(
                      children: [
                        DrCard(),
                        SizedBox(height: 5),
                        DrCard(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNav());
  }
}

class DrCard extends StatelessWidget {
  const DrCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
          // hex color
          color: Colors.teal.shade900,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 154,
            width: 117,
            child: Column(children: [
              Image.asset(
                'assets/images/doctor1.png',
                height: 100,
              ),
              SizedBox(height: 10),
              Text("Dr. Ruth",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      letterSpacing: 0.23,
                      fontSize: 18,
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.bold)),
              Text("Pending",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.16,
                      color: Colors.white)),
            ]),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 5, right: 19, bottom: 9),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Dr. Ruth",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  letterSpacing: 0.23,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Icon(Icons.delete, color: Colors.red, size: 20),
                        ],
                      ),
                      const Padding(
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
                    ])),
          )
        ]));
  }
}
