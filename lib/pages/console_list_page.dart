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
        _assetDetail("Master System", imagePath + "mastersystem.jpg"),
        _assetDetail("Mega Drive", imagePath + "megadrive.jpg"),
        _assetDetail("Nintendo", imagePath + "nes.jpg"),
        _assetDetail("Super Nintendo", imagePath + "supernintendo.jpg")
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
