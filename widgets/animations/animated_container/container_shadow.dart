
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

  // double _width = 50;
  // double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

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

                    AnimatedPhysicalModel(shape: BoxShape.rectangle,
                        elevation: 20,
                        color:isAnimate?  Colors.red : Colors.brown,
                        shadowColor:isAnimate? Colors.green : Colors.black,
                        duration: const Duration(seconds: 1),
                        child: Container(
                          color: Colors.blue, width: 50, height: 50,)),

                    const SizedBox(height: 20,),


                  ],
                ),
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                isAnimate = !isAnimate;
              });
            },
            child: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
        ));
  }
}
