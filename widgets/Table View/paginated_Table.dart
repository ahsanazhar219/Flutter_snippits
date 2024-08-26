import 'package:flutter/material.dart';

//paginated Table view...having an issue


void main(){

  runApp(MaterialApp(
    home: DataTableExample(),
  ));
}

class DataTableExample extends StatefulWidget {
  @override
  _DataTableExampleState createState() => _DataTableExampleState();
}

class _DataTableExampleState extends State<DataTableExample> {
  final List<Map<String, dynamic>> _dataList = List.generate(100, (index) {
    return {
      'id': index + 1,
      'name': 'Product ${index + 1}',
      'price': (index + 1) * 5 ,
      'date': '2/4/2023',
    };
  });

  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage ;
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            DataColumn(label: Text('date')),

          ],
          source: _MyDataTableSource(dataList: _dataList),
          rowsPerPage: _rowsPerPage,
          availableRowsPerPage: [5, 10, 30],

          onPageChanged: (pageIndex) {
            setState(() {
              _currentPage = pageIndex;
            });
          },
          onRowsPerPageChanged: (newRowsPerPage) {
            setState(() {
              _rowsPerPage = newRowsPerPage!;
            });
          },
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
    // returning a DataRow at the specified index.
    if (index >= dataList.length) {
      return null;
    }
    final item = dataList[index];
    return DataRow(
      cells: [
        DataCell(Text(item['id'].toString())),
        DataCell(Text(item['name'])),
        DataCell(Text(item['price'].toString())),
        DataCell(Text(item['date'])),

      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  // returns the total number of rows in your data.
  int get rowCount => dataList.length;

  @override
  // to track the number of selected rows,
  int get selectedRowCount => 0;
}