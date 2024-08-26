import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/hero_animation.dart';

import 'hero_page1dart';

void main(){
  runApp(const HeroAnimation());
}
class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HeroFirst(),
      ),
    );
  }
}
