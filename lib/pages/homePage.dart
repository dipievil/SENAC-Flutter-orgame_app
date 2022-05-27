import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("OrGame")),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: const [
              Flexible(
                child: SizedBox(
                  child: FractionallySizedBox(
                    heightFactor: 1,
                    widthFactor: 0.9,
                    alignment: FractionalOffset.center,
                    child: Center(child: Text("Azul")),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  child: FractionallySizedBox(
                    heightFactor: 1,
                    widthFactor: 0.9,
                    alignment: FractionalOffset.center,
                    child: Center(child: Text("Vermelho")),
                  ),
                ),
              ),
            ],
          ),
        ));
    //return Container(color: Colors.blue);
  }
}
