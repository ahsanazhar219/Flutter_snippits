import 'package:flutter/material.dart';
import 'hero_page2.dart';


// main(){
//   runApp(HeroFirst());
// }

class HeroFirst extends StatefulWidget {
  const HeroFirst({super.key});

  @override
  State<HeroFirst> createState() => _HeroFirstState();
}

class _HeroFirstState extends State<HeroFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HeroSecond();
              }));
            },
            child: const Hero(
              tag: 'kashmir',
              transitionOnUserGestures: true,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/OIP.H8cY1emGW5bMw_WSfK2U0wHaE7?w=262&h=180&c=7&r=0&o=5&pid=1.7'),
                radius: 60,
              ),
            ),
          ),
        ),
      );

  }
}
