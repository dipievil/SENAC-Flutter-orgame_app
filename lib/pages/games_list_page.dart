import 'package:flutter/material.dart';
import 'package:orgame_app/pages/game_detail_page.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/games/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Games"),
      ),
      body: _listGames(context),
    );
  }

  Widget _listGames(context) {
    return ListView(
      children: [
        _gameDetail("Allex Kidd In Miracle World", imagePath + "alexkidd.jpg",
            context, GameDetailPage()),
        _gameDetail("Castlevania X", imagePath + "castlevania-draculax.jpg",
            context, GameDetailPage()),
        _gameDetail("Castlevania", imagePath + "Castlevania.png", context,
            GameDetailPage()),
        _gameDetail("CastlevaniaBlodlines",
            imagePath + "CastlevaniaBloodlines.png", context, GameDetailPage())
      ],
    );
  }

  Widget _gameDetail(gameName, imagePath, context, StatelessWidget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => page));
      },
      child: Row(
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
      ),
    );
  }
}
