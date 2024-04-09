import 'package:flutter/material.dart';

class FondoDegPage extends StatelessWidget {
  const FondoDegPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFFFBA3660),
            Color(0xFF1C256E),
          ],
          stops: [0.3, 0.75],
        )),
      )),
    );
  }
}
