import 'package:flutter/material.dart';

void main() {
  runApp(const ExplicitAJK());
}

class ExplicitAJK extends StatefulWidget {
  const ExplicitAJK({super.key});

  @override
  State<ExplicitAJK> createState() => _ExplicitAJKState();
}

class _ExplicitAJKState extends State<ExplicitAJK>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation scaleAnimation;
  late Animation colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {
          if(controller.status == AnimationStatus.completed){
            controller.reverse();
          }
          else if (controller.status == AnimationStatus.dismissed){
            controller.forward();
          }
          print(controller.value);
        });
      });

    scaleAnimation = IntTween(begin: 20, end: 250).animate(controller);
    final curveAnimation =
        CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    colorAnimation = ColorTween(begin: Colors.blueAccent, end: Colors.red)
        .animate(curveAnimation);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: colorAnimation.value,
                    shape: BoxShape.rectangle,
                    boxShadow: const [
                      BoxShadow(color: Colors.yellow, spreadRadius: 10)
                    ]),
                width: scaleAnimation.value,
                height: scaleAnimation.value,
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {
        //   setState(() {
        //     if (controller.status == AnimationStatus.completed) {
        //       controller.reverse();
        //     } else if (controller.status == AnimationStatus.dismissed) {
        //       controller.forward();
        //     }
        //     print(controller.value);
        //   });
        // }),
      ),
    );
  }
}
