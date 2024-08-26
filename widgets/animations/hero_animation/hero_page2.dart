import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroSecond extends StatefulWidget {
  const HeroSecond({super.key});

  @override
  State<HeroSecond> createState() => _HeroSecondState();
}

class _HeroSecondState extends State<HeroSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Hero(tag: 'kashmir',
            child: CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.H8cY1emGW5bMw_WSfK2U0wHaE7?w=262&h=180&c=7&r=0&o=5&pid=1.7'),
            ),
          ),
        ),
      ),
    );
  }
}
