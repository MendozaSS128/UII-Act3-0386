import 'package:flutter/material.dart';

class CirculooPage extends StatelessWidget {
  const CirculooPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.purpleAccent, shape: BoxShape.circle),
            width: 150,
            height: 150,
          ),
          Container(
            child: Text(
              "20308051280386 Mendoza Castrejon Selma Sugey",
              style: TextStyle(fontSize: 18, color: Colors.indigo),
            ),
          )
        ]),
      ),
    );
  }
}
