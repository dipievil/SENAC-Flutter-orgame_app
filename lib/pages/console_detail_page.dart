import 'package:flutter/material.dart';

class ConsoleDetailPage extends StatelessWidget {
  const ConsoleDetailPage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/consoles/";

  final name = 'Master System';
  final manufacturer = 'Sega';
  final genereation = '3ª';
  final year = '1985';
  final imageName = 'mastersystem.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          Image.asset(imagePath + imageName, fit: BoxFit.contain),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: _showTable(),
          )
        ],
      ),
    );
  }

  Table _showTable() {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text("Developer: ")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text(manufacturer)),
          ),
        ]),
        TableRow(children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text("Ano de lançamento:")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text(year)),
          ),
        ]),
        TableRow(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text("Geração: ")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text(genereation)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text("Desenvolvedora: ")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text(manufacturer)),
            ),
          ],
        )
      ],
    );
  }
}
