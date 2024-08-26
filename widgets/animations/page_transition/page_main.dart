import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week4/Flutter/animations/page_transition/page_one.dart';
// import 'package:untitled/hero_animation.dart';

import '../hero_animation/hero_again/hero_page1dart';


void main(){
  runApp(bio());
}
class bio extends StatefulWidget {
  const bio({super.key});

  @override
  State<bio> createState() => _bioState();
}

class _bioState extends State<bio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pageOne(),
      ),
    );
  }
}
