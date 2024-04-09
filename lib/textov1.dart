import 'package:flutter/material.dart';

class Texto1Page extends StatelessWidget {
  const Texto1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0))),
              child: Text(
                "Soy un texto V1",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Container(
              child: Text(
                "20308051280386 Mendoza Castrejon Selma Sugey",
                style: TextStyle(fontSize: 18, color: Colors.indigo),
              ),
            )
          ],
        ),
      ),
    );
  }
}
