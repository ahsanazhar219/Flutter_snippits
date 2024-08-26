import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
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
          child: CircleAvatar(
            radius: 150,
            backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.H8cY1emGW5bMw_WSfK2U0wHaE7?w=262&h=180&c=7&r=0&o=5&pid=1.7'),
          ),
        ),
      ),
    );
  }
}
