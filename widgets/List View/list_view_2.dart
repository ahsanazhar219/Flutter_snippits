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

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView.separated(
              itemBuilder: (BuildContext context,int index){
                return ListTile(
                  leading: Text('${index+1}'),
                  title: Text('Surah ${index+1}'),
                  subtitle: Text('this is subTitle ${index+1}'),
                  trailing: Icon(Icons.search,size: 25,),
                );
              },
              separatorBuilder: (BuildContext context,int index){
                return Divider();
              },
              itemCount: listNumbers.length),

          // child: ListView.builder(
          //   // scrollDirection: Axis.horizontal,
          //   itemCount:listNumbers.length,
          //     itemBuilder: (BuildContext context,int index){
          //     return ListTile(
          //     leading: Icon(Icons.menu,size: 25,),
          //       title: Text('title ${index+1}'),
          //       subtitle: Text('this is subTitle ${index+1}') ,
          //       trailing: Icon(Icons.search,size: 25,),
          //     );
          //     })
        ),
      ),
    );
  }
}