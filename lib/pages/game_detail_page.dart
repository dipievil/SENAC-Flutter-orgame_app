import 'package:flutter/material.dart';

class GameDetailPage extends StatelessWidget {
  const GameDetailPage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/games/";

  final console = 'Master System';
  final year = '1986';
  final genre = 'Plataforma';
  final designer = 'Kotaro Hayashida';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alex Kidd In Miracle World"),
      ),
      body: Column(
        children: [
          Image.asset(imagePath + "alexkidd.jpg",
              width: 100, height: 100, fit: BoxFit.contain),
          _showTable()
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
                child: Text("Console")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text(console)),
          ),
        ]),
        TableRow(children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text("Ano do lançamento")),
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
                  child: Text("Gênero")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text(genre)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text("Designer")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text(designer)),
            ),
          ],
        )
      ],
    );
  }
}
