import 'package:app/Screens/Profile.dart';
import 'package:app/Screens/activity.dart';
import 'package:app/Screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

void _onItemTapped(int _currentIndex, context) {
  switch (_currentIndex) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
      break;

    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ActivityOne()),
      );
      break;

    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Profile()),
      );
      break;
  }
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: Colors.teal,
      onTap: (value) => _onItemTapped(value, context),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history,
            color: Colors.black,
          ),
          label: 'Activities',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          label: 'School',
        ),
      ],
    ));
  }
}
