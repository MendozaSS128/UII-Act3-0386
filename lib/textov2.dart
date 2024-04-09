import 'package:flutter/material.dart';

class Texto2Page extends StatelessWidget {
  const Texto2Page({Key? key}) : super(key: key);

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
                color: Color(0xFFEF9A9A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Soy un texto V2", style: TextStyle(fontSize: 20)),
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
