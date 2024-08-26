import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(GridViewe());

}

class GridViewe extends StatefulWidget {
  const GridViewe({super.key});

  @override
  State<GridViewe> createState() => _GridVieweState();
}

class _GridVieweState extends State<GridViewe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 4,

              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1,
              // controller: FixedExtentScrollController(initialItem: 2),
              children: const [
                Card(
                  color: Colors.red,
                  child: Text('this is Card 1'),
                ),
                Card(
                  color: Colors.yellow,
                  child: Text('this is Card 2'),
                ),
                Card(
                  color: Colors.green,
                  child: Text('this is Card 3'),
                ),
                Card(
                  color: Colors.red,
                  child: Text('this is Card 4'),
                ),
                Card(
                  color: Colors.red,
                  child: Text('this is Card 1'),
                ),
                Card(
                  color: Colors.yellow,
                  child: Text('this is Card 2'),
                ),
                Card(
                  color: Colors.green,
                  child: Text('this is Card 3'),
                ),
                Card(
                  color: Colors.red,
                  child: Text('this is Card 4'),
                ),
                Card(
                  color: Colors.red,
                  child: Text('this is Card 1'),
                ),
                Card(
                  color: Colors.yellow,
                  child: Text('this is Card 2'),
                ),
                Card(
                  color: Colors.green,
                  child: Text('this is Card 3'),
                ),
                Card(
                  color: Colors.red,
                  child: Text('this is Card 4'),
                ),
              ],

            )
        ),
      ),
    );
  }
}
