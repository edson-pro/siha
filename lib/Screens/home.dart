// import 'package:app/widgets/utils.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  // const Home(User? user, {super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .35,
            decoration: BoxDecoration(
              color: const Color.fromARGB(120, 0, 150, 135).withOpacity(.5),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(162, 32, 192, 176),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Good Morning \nKim",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color:
                              Color.fromARGB(255, 15, 15, 15).withOpacity(.25),
                        )
                      ]),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle:
                                TextStyle(color: Colors.teal.withOpacity(.5)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Colors.teal.withOpacity(.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: const <Widget>[
                    Card(
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          "Item 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(200, 24, 202, 184),
                      child: Center(
                        child: Icon(Icons.local_hospital,
                            color: Colors.white, size: 100),
                        // Text(
                        //   "Item 1",
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 16,
                        //   ),
                        // ),
                      ),
                    ),
                    Card(
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          "Item 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.teal,
                      child: Center(
                        child: Text(
                          "Item 1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
