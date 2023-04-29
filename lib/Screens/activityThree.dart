// import 'package:app/widgets/utils.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:app/Screens/activityTwo.dart';
import 'package:app/widgets/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:app/Screens/activity.dart';

class ActivityThree extends StatefulWidget {
  const ActivityThree({super.key});

  // const ActivityThree(User? user, {super.key});

  @override
  State<ActivityThree> createState() => ActivityThreeState();
}

class ActivityThreeState extends State<ActivityThree> {
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
                                          Colors.grey.shade600),
                                ),
                                child: Text('Pending',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ActivityOne(),
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
                                          Colors.white),
                                ),
                                child: Text('Denied',
                                    style: TextStyle(
                                        color: Colors.indigo.shade900)),
                                onPressed: () => null,
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
