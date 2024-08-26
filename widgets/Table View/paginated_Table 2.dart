import 'package:flutter/material.dart';

//paginated Table view...chat gpt fixed problem

void main() {
  runApp(DataTableExample());
}

class DataTableExample extends StatefulWidget {
  @override
  _DataTableExampleState createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<DataTableExample> {
  List<Map<String, dynamic>> _dataList = List.generate(100, (index) {
    return {
      'id': index + 1,
      'name': 'Product ${index + 1}',
      'price': (index + 1) * 5,
      'date': '2/4/2023',
    };
  });

  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr, // Set the desired text direction
        child: Scaffold(
          appBar: AppBar(
            title: Text('Data Table Example'),
          ),
          body: SingleChildScrollView(
            child: PaginatedDataTable(
              header: Text('Product List'),
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Price')),
                DataColumn(label: Text('Date')),
              ],
              source: _MyDataTableSource(dataList: _dataList),
              rowsPerPage: _rowsPerPage,
              availableRowsPerPage: [5, 10, 30],
              onPageChanged: (pageIndex) {
                setState(() {
                  _currentPage = pageIndex;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _MyDataTableSource extends DataTableSource {
  final List<Map<String, dynamic>> dataList;

  _MyDataTableSource({required this.dataList});

  @override
  DataRow? getRow(int index) {
    if (index >= dataList.length) return null;
    final item = dataList[index];
    return DataRow(cells: [
      DataCell(Text(item['id'].toString())),
      DataCell(Text(item['name'])),
      DataCell(Text(item['price'].toString())),
      DataCell(Text(item['date'])),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => dataList.length;

  @override
  int get selectedRowCount => 0;
}
