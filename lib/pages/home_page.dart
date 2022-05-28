import 'package:flutter/material.dart';
import 'package:orgame_app/pages/console_list_page.dart';
import 'package:orgame_app/pages/games_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("OrGame")),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Flexible(
                child: showHomeBox(context, "consoles/nes.jpg", "Consoles",
                    const ConsolesPage()),
              ),
              Flexible(
                child: showHomeBox(
                    context, "games/alexkidd.jpg", "Games", const GamesPage()),
              ),
            ],
          ),
        ));
  }

  SizedBox showHomeBox(
      BuildContext context, String image, String label, StatelessWidget page) {
    return SizedBox(
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => page));
            },
            child: Column(
              children: [
                Expanded(
                    child:
                        Image.asset(imagePath + image, fit: BoxFit.fitWidth)),
                Expanded(child: Text(label))
              ],
            )));
  }
}
