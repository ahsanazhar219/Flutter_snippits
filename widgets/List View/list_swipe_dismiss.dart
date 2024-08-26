import 'package:flutter/material.dart';

main() => runApp(DismissibleAJK());

class DismissibleAJK extends StatefulWidget {
  const DismissibleAJK({super.key});

  @override
  State<DismissibleAJK> createState() => _DismissibleAJKState();
}

class _DismissibleAJKState extends State<DismissibleAJK> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];
              return Dismissible(
                key: Key(item),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(index);
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Item $item dismissed'))
                  );
                },
                direction: DismissDirection.endToStart,
                background: Container(color: Colors.red,),
                child: ListTile(
                  title: Text(items[index]),
                ),
              );
            },
          )),
    );
  }
}