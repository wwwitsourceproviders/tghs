import 'package:flutter/material.dart';
enum Menu { Logout,ChangePassword}
class TableScreen extends StatefulWidget {


  const TableScreen({Key? key}) : super(key: key);

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SizedBox(
      width:MediaQuery.of(context).size.width,
      child: DataTable(
        dataRowColor: MaterialStateProperty.resolveWith(_getDataRowColor),
        showCheckboxColumn: false,
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Last Class',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Last Grade',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Year Started',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Year Ended',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows:  <DataRow>[
          DataRow(
            onSelectChanged: (isSelected) => {
              print('Item 1 clicked!')
            },
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('Acad')),
              DataCell(Text('10')),
              DataCell(Text('2016')),
              DataCell(Text('2017')),
            ],
          ),
          DataRow(
            onSelectChanged: (isSelected) => {
              print('Item 1 clicked!')
            },
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('Acad')),
              DataCell(Text('10')),
              DataCell(Text('2016')),
              DataCell(Text('2017')),
            ],
          ),
          DataRow(
            onSelectChanged: (isSelected) => {
              print('Item 1 clicked!')
            },
            cells: <DataCell>[
              DataCell(Text('Sarah')),
              DataCell(Text('Acad')),
              DataCell(Text('10')),
              DataCell(Text('2016')),
              DataCell(Text('2017')),
            ],
          ),
        ],
      ),
    );
  }
  Color _getDataRowColor(Set<MaterialState> states) {
    print(states);
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    if (states.contains(MaterialState.hovered)) {
      return Colors.blue;
    }
    else if(states.contains(MaterialState.pressed)){
      return Colors.deepOrange;
    }
    //return Colors.green; // Use the default value.
    return Colors.transparent;
  }
}