import 'package:flutter/material.dart';

class DataTableScreen extends StatelessWidget {
  DataTableScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> list = [
    {
      'sno': 1,
      'fname': 'ABC',
      'lname': 'XYZ',
      'sal': '111111',
    },
    {
      'sno': 2,
      'fname': 'DEF',
      'lname': 'VWX',
      'sal': '222222',
    },
    {
      'sno': 3,
      'fname': 'GHI',
      'lname': 'STU',
      'sal': '22222',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DataTable(
        
        border: TableBorder(
          borderRadius: BorderRadius.circular(10),
          horizontalInside: const BorderSide(color: Colors.black),
          verticalInside: const BorderSide(color: Colors.black),
          bottom: const BorderSide(color: Colors.black),
          left: const BorderSide(color: Colors.black),
          right: const BorderSide(color: Colors.black),
          top: const BorderSide(color: Colors.black),
        ),
        showBottomBorder: true,
        dataRowColor: MaterialStateColor.resolveWith((states) {
          // ignore: unrelated_type_equality_checks
          if (states == MaterialState.selected) {
            return Colors.amber;
          } else {
            return Colors.brown;
          }
        }),
        columns: const [
          DataColumn(
            label: Text("S/NO"),
          ),
          DataColumn(
            label: Text("First Name"),
          ),
          DataColumn(
            label: Text("Last Name"),
          ),
          DataColumn(
            label: Text("Salary"),
          )
        ],
        rows: list.map<DataRow>((e) {
          return DataRow(
            cells: [
              DataCell(Text(e['sno'].toString())),
              DataCell(Text(e['fname'])),
              DataCell(Text(e['lname'])),
              DataCell(Text(e['sal'])),
            ],
          );
        }).toList(),
      ),
    );
  }
}
