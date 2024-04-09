import 'package:flutter/material.dart';

class AterrizajePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xff8400ff),
              width: 10,
            ),
          ),
          width: 280,
          height: 280,
          alignment: Alignment.center,
          child: const Text(
            'S',
            style: TextStyle(
              fontSize: 180,
              color: Color(0xffaf53e3),
            ),
          ),
        ),
      ),
    );
  }
}
