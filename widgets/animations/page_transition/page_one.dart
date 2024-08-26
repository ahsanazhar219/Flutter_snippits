import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:week4/Flutter/animations/page_transition/page_two.dart';
import 'package:card_swiper/card_swiper.dart';

import '../hero_animation/hero_again/hero_page2.dart';
// import 'hero_page2.dart';

// main(){
//   runApp(HeroFirst());
// }

class pageOne extends StatefulWidget {
  const pageOne({super.key});

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  List <String> imageList = [
    'https://th.bing.com/th/id/OIP.H8cY1emGW5bMw_WSfK2U0wHaE7?w=262&h=180&c=7&r=0&o=5&pid=1.7',
    'https://th.bing.com/th/id/OIP.H8cY1emGW5bMw_WSfK2U0wHaE7?w=262&h=180&c=7&r=0&o=5&pid=1.7',
    'https://th.bing.com/th/id/OIP.H8cY1emGW5bMw_WSfK2U0wHaE7?w=262&h=180&c=7&r=0&o=5&pid=1.7'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
          onTap: () {
            //we can also use Navigator.pushNamed.... in on tab.
            Navigator.push(
                context,
                PageTransition(
                  alignment: Alignment.center,
                    isIos: true,
                    curve: Curves.easeInBack,
                    reverseDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 1),
                    child: PageTwo(),
                    type: PageTransitionType.theme)
            );
          },

          // onTap: () {
          //
          //   Navigator.push(context, MaterialPageRoute(builder: (context) {
          //     return HeroSecond();
          //   }));
          // },
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.H8cY1emGW5bMw_WSfK2U0wHaE7?w=262&h=180&c=7&r=0&o=5&pid=1.7'),
            radius: 60,
          ),
        ),
      ),
    );
  }
}
