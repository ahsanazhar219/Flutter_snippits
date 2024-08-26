import 'package:flutter/material.dart';
import 'package:week4/Flutter/bars/splash_screen.dart';

main(){
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
