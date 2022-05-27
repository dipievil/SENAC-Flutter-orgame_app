import 'package:flutter/material.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/games/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Games"),
      ),
      body: _listGames(),
    );
  }

  Widget _listGames() {
    return ListView(
      children: [
        _gameDetail("Allex Kidd In Miracle World", imagePath + "alexkidd.jpg"),
        _gameDetail("Castlevania X", imagePath + "castlevania-draculax.jpg"),
        _gameDetail("Castlevania", imagePath + "Castlevania.png"),
        _gameDetail(
            "CastlevaniaBlodlines", imagePath + "CastlevaniaBloodlines.png")
      ],
    );
  }

  Widget _gameDetail(gameName, imagePath) {
    return Row(
      children: [
        Image.asset(imagePath, width: 100, height: 100, fit: BoxFit.contain),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$gameName",
              style: const TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
