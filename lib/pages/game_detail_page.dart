import 'package:flutter/material.dart';

class GameDetailPage extends StatelessWidget {
  const GameDetailPage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/games/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alex Kidd In Miracle World"),
      ),
      body: Row(children: [
        Image.asset(imagePath + "alexkidd.jpg",
            width: 100, height: 100, fit: BoxFit.contain),
        const Text('Alex Kidd In Miracle World'),
        const Text('Console: Master System'),
        const Text('Ano de lançamento: 1986'),
        const Text('Gênero: Plataforma'),
        const Text('Designer: Kotaro Hayashida'),
      ]),
    );
  }
}
