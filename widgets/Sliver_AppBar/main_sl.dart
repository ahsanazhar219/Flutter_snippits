//Main run file entry point.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AjkSliverClass.dart';  //Sliver Class library/file imported

main() {
  runApp(Sliver_AppBar());
}

class Sliver_AppBar extends StatefulWidget {
  const Sliver_AppBar({super.key});

  @override
  State<Sliver_AppBar> createState() => _Sliver_AppBarState();
}

class _Sliver_AppBarState extends State<Sliver_AppBar> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AjkSliverClass(),
    );
  }
}
