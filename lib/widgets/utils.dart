import 'package:flutter/material.dart';

//this file contains reusable widgets.
alternateButton({
  required onPressed,
  required text,
}) {
  return MaterialButton(
    onPressed: onPressed,
    color: Colors.teal,
    minWidth: double.infinity,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
        textScaleFactor: 1.2,
      ),
    ),
  );
}

//custom button
class ButtonCustom extends StatelessWidget {
  // const ButtonCustom({super.key, required this.text, required this.onPressed});
  const ButtonCustom({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 255, 255, 255)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ));
  }
}

//Bottom navbar reusable
class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;
  // final List<Widget> _children = [
  //   Home(),
  //   OPtions(),
  //   Activity(),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      // body: Center(
      //   child: Text('Page $_selectedIndex'),
      // ),
      // body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4),
            label: 'Options',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_edu_rounded),
            label: 'Your Activity',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

//

// scrollable list horizontal

// ScrollHOriopzontal({required text, required icon, required onPressed}) {
//   return Scaffold(

//   );
// }
