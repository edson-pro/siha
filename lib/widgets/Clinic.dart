import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Clinic extends StatelessWidget {
  const Clinic({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 28, right: 2),
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                // hex color
                color: Colors.teal.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 104,
                  width: 117,
                  child: Image.asset('assets/images/clinic.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 5, right: 19, bottom: 9),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Cenera Clinic",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  letterSpacing: 0.23,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text("10 minutes away",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.16))),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            child: Text('Get Directions'),
                            onPressed: () {
                              print('Hello');
                            },
                          )
                        ]))
              ])),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
