import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
                child: SizedBox(
                  child: FractionallySizedBox(
                    heightFactor: 0.9,
                    widthFactor: 0.9,
                    alignment: FractionalOffset.center,
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Image.asset(
                            imagePath + "consoles/nes.jpg",
                            fit: BoxFit.fitHeight,
                          ),
                          const Text("Consoles")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  child: FractionallySizedBox(
                    heightFactor: 0.9,
                    widthFactor: 0.9,
                    alignment: FractionalOffset.center,
                    child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.asset(imagePath + "games/alexkidd.jpg",
                                fit: BoxFit.contain),
                            const Text("Games")
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
