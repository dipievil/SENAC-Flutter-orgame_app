import 'package:flutter/material.dart';
import 'package:orgame_app/components/assetDetail.dart';

class ConsolesPage extends StatelessWidget {
  const ConsolesPage({Key? key}) : super(key: key);

  static const imagePath = "assets/images/consoles/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Consoles"),
      ),
      body: _listConsoles(),
    );
  }

  Widget _listConsoles() {
    return ListView(
      children: [
        _assetDetail("Allex Kidd In Miracle World", imagePath + "alexkidd.jpg"),
        _assetDetail("Castlevania X", imagePath + "castlevania-draculax.jpg"),
        _assetDetail("Castlevania", imagePath + "Castlevania.png"),
        _assetDetail(
            "CastlevaniaBlodlines", imagePath + "CastlevaniaBloodlines.png")
      ],
    );
  }

  Widget _assetDetail(assetDetail, imagePath) {
    return Row(
      children: [
        Image.asset(imagePath, width: 100, height: 100, fit: BoxFit.contain),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$assetDetail",
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
