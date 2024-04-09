import 'package:flutter/material.dart';

class Cuadrados2Page extends StatelessWidget {
  const Cuadrados2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10.0),
            ),
            width: 250,
            height: 250,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 100,
            ),
          ),
          Container(
            child: Text(
              "20308051280386 Mendoza Castrejon Selma Sugey",
              style: TextStyle(fontSize: 18, color: Colors.indigo),
            ),
          ),
        ]),
      ),
    );
  }
}
