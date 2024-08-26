//main file for Bottom_Nav_Bar
import 'package:flutter/material.dart';
import 'package:week4/Flutter/Navigation/Bottom_NavigationBar/sircode/Bottom_Nav_Bar.dart';
main (){
  runApp(BottomNav());
}
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}
