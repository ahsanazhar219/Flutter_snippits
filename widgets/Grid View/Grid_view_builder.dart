import 'package:flutter/material.dart';
void main(){
  runApp(ClassPrevious());

}
class ClassPrevious extends StatefulWidget {
  const ClassPrevious({super.key});

  @override
  State<ClassPrevious> createState() => _ClassPreviousState();
}

class _ClassPreviousState extends State<ClassPrevious> {
  List<int> listNumbers = List.generate(114, (index) => index);
  List <String> surahNames = List.generate(12, (index) => '') ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child:GridView.builder(
                gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                  //  crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                    maxCrossAxisExtent: 250
                ),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    color: index % 2 == 0 ? Colors.red: Colors.green ,
                    child: Center(
                      child: Text('this is card ${index+1}'),
                    ),
                  );
                })
        ),
      ),
    );
  }
}