
import 'package:flutter/material.dart';

class AjkSliverClass extends StatefulWidget {
  const AjkSliverClass({super.key});

  @override
  State<AjkSliverClass> createState() => _AjkSliverClassState();
}

class _AjkSliverClassState extends State<AjkSliverClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(


            title: Text('Sliver App Bar'),
            expandedHeight: 400,
            floating: true,
            pinned: true,
            // backgroundColor: Colors.greenAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('This is Flexible App Bar Title'),
              background: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Dal_Lake_Hazratbal_Srinagar.jpg/1200px-Dal_Lake_Hazratbal_Srinagar.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 5,
                      (BuildContext context , int index){
                    return InkWell(
                      splashColor: Colors.red,
                      onTap: (){
                        print('this is sliver list ${index+1}');
                      },
                      child: ListTile(
                        title: Text('this is item ${index+1}'),
                      ),
                    );
                  }
              )),

          SliverList.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  color: index % 2 == 0 ? Colors.red : Colors.blue,
                  child: Center(
                    child: Text('This is Container ${index + 1}'),
                  ),
                );
              }),

          SliverList(
            delegate: SliverChildBuilderDelegate(childCount: 10,
                (BuildContext context, int index) {
              return InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  print('this is item ${index + 1}');
                },
                child: ListTile(
                  title: Text('this is sliver List ${index + 1}'),
                ),
              );
            }),
          ),

          SliverGrid(
            delegate: SliverChildBuilderDelegate(childCount: 5,
                (BuildContext context, int index) {
              return InkWell(
                splashColor: Colors.blue,
                onTap: () {
                  print('this is item ${index + 1}');
                },
                child: ListTile(
                  title: Text('this is Sliver Grid ${index + 1}'),
                ),
              );
            }),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
          ),

          SliverGrid.builder(
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 2,
                // mainAxisExtent: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.red,
                  child: Text('This is  sliverGridBuilder ${index + 1} '),
                );
              })
        ],
      ),
    );
  }
}
