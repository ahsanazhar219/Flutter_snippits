import 'package:flutter/material.dart';
import 'package:week4/Flutter/bars/splash_screen.dart';

import 'drawer_widget.dart';
//side manu
//Tab bar
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: const Duration(microseconds: 300),

      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('side Manu'),
          // Tab Bar on Main Screen with three tabs
          bottom: const TabBar(
              indicatorColor: Colors.red,
              tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.travel_explore),
            ),
            Tab(
              icon: Icon(Icons.contact_phone),
            ),
          ]),
        ),
        //Drawer or side manu
        drawer: const CDrawer(),
        body: const TabBarView(children: [
          Center(
            child: Text(
              'Home SCreen',
              style: TextStyle(fontSize: 29),
            ),
          ),

          Center(
            child: Text(
              'internet Screen',
              style: TextStyle(fontSize: 29),
            ),
          ),

          Center(
            child: Text(
              'Contact Screen',
              style: TextStyle(fontSize: 29),
            ),
          ),
        ]),
        // body: Center(
        //   child: Text('Home Screen', style:TextStyle(fontSize: 40) ,),
        // ),
      ),
    );
  }
}

