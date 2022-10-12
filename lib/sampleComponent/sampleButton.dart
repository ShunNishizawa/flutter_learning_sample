import 'package:flutter/material.dart';

class SampleButton extends StatelessWidget {
  SampleButton({required this.title, required this.onPressed});

  final String title;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        color: Colors.purple,
        height: 120,
        width: 80,
        child: const Text(
          "テスト２",
          // テキストの位置を中央揃えにする›
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
