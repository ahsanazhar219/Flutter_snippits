/*we need a controller and a builder
* we give starting and target value in tween. like color tween, Rect tween,
* **Performance Optimizations
*  */


import 'package:flutter/material.dart';
main(){

  runApp(TweenAnimation());
}

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});


  @override
  State<TweenAnimation> createState() => _TweenAnimationState();


}


class _TweenAnimationState extends State<TweenAnimation> {

 // bool is_animate = false;
  double targetValue = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tween animation builder'),
        ),
        body: Center(

          child: Column(
            children: [
               TweenAnimationBuilder(tween: Tween<double>(begin:25, end: targetValue  ),
                  duration: const Duration(seconds: 2),
                  builder: (BuildContext context, double size, child){
                 return IconButton(
                   splashRadius: 20,
                   iconSize: size,
                   onPressed: (){
                   setState(() {
                     targetValue = targetValue == 25? 250:25;
                   });
                 }, icon: const Icon(Icons.ac_unit),
                 );
                  }
                  ),

              const SizedBox(height: 30,),
              
              TweenAnimationBuilder(tween: Tween<double>(begin:25, end: targetValue  ),
                  duration: const Duration(seconds: 2),
                  builder: (BuildContext context, double size, child){
                    return Container(
                      width: size,
                      height: 50,
                      color: Colors.red,
                    );
                  }
              ),
            ],
          ),

        ),

      ),

    );
  }
}
