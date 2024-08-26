import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TableView());
}

class TableView extends StatefulWidget {
  const TableView({super.key});

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: DataTable(
            showCheckboxColumn: true,
            showBottomBorder: true,
            dataRowColor: const MaterialStatePropertyAll(Colors.pinkAccent),
            headingRowColor: const MaterialStatePropertyAll(Colors.amber),
            columnSpacing: 50,
            dividerThickness: 2 ,
            border: const TableBorder(top: BorderSide(width: 2), bottom: BorderSide(width: 2)  ),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Age')),
              DataColumn(label: Text('Height')),
              // DataColumn(label: CircleAvatar()),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text('Ahsan'), showEditIcon: true, ),
                  DataCell(Text('23')),
                  DataCell(Text('5.7 Ft')),
                ],
              ),

              DataRow(cells: [
                DataCell(showEditIcon: true , Text('Hamza')),
                DataCell(Text('24')),
                DataCell(Text('5.5 Ft')),
              ]),

              DataRow(cells: [
                DataCell(showEditIcon: true ,  Text('Kashan')),
                DataCell(Text('23')),
                DataCell(Text('5.6 Ft')),
              ]),

              DataRow(cells: [
                DataCell(showEditIcon: true ,  Text('Subhan')),
                DataCell(Text('23')),
                DataCell(Text('5.2 Ft')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
