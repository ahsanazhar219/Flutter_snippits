import 'dart:async';
import 'package:flutter/material.dart';
import 'package:week4/Flutter/bars/tab_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void loadHomeScreen(){
    Timer(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return const HomePage();
      }));
    });
  }
  @override
  void initState() {//init state
    //it is immediately called after create state, A new Concept
    // TODO: implement initState
    loadHomeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Kashmir', style: TextStyle(fontSize: 70, backgroundColor: Colors.greenAccent),)),
            SizedBox(height: 20,)
            // Image.network(src),
          ],
        ),
      ),
    );
  }
}
