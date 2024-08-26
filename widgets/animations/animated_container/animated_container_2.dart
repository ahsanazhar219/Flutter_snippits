import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  const AnimatedContainerApp({super.key});

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  bool isAnimate = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('AnimatedContainer Demo'),
          ),

          body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: isAnimate ? 250 : 50,
                      height: isAnimate ? 250 : 50,
                      color: isAnimate ? Colors.amber : Colors.red,
                      // curve: Curves.bounceInOut,
                      curve: Curves.elasticInOut,
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    AnimatedDefaultTextStyle(
                        curve: Curves.bounceInOut,
                        style: TextStyle(
                            fontSize: isAnimate ? 30 : 12,
                            color: isAnimate ? Colors.pink : Colors.yellow,
                            fontWeight:
                            isAnimate ? FontWeight.bold : FontWeight.normal),
                        duration: const Duration(seconds: 2),
                        child: const Text('hello Animated Text')),
                    const SizedBox(
                      height: 30,
                    ),
                    AnimatedAlign(
                      alignment: isAnimate ? Alignment.bottomLeft : Alignment.center,
                      duration: const Duration(seconds: 2),
                      child: Container(
                        width: 20,
                        height: 20,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 20,),

                    AnimatedCrossFade(
                        firstChild: const FlutterLogo(size: 20,
                          style: FlutterLogoStyle.horizontal,
                        ),
                        secondChild: const FlutterLogo(size: 50,
                          style: FlutterLogoStyle.markOnly,
                        ),
                        crossFadeState: isAnimate? CrossFadeState.showFirst: CrossFadeState.showSecond,
                        duration: const Duration(seconds: 2))
                  ],
                ),
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                isAnimate = !isAnimate;
              });
            },
            child: const Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
        ));
  }
}
