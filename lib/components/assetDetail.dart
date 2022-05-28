import 'package:flutter/material.dart';

class Components {
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
