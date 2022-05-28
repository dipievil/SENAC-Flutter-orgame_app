import 'package:flutter/material.dart';
import 'package:orgame_app/model/game_model.dart';

class GameDetailPage extends StatelessWidget {
   GameDetailPage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/games/";

  var alexKidd = GameModel(1,
  "Alex Kidd In Miracle World","Master System",
  "1986","Plataforma","Kotaro Hayashida","Sega","alexkidd.jpg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(alexKidd.name),
      ),
      body: Column(
        children: [
          Image.asset(imagePath + alexKidd.imageFile, fit: BoxFit.contain),
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
                child: Text("Console")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Text(alexKidd.)),
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
                child: Text(alexKidd.year)),
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
                  child: Text(alexKidd.genre)),
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
                  child: Text(alexKidd.designer)),
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text("Desenvolvedora:")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Text(alexKidd.developer)),
            ),
          ],
        )
      ],
    );
  }
}
