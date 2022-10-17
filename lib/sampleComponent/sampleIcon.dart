import 'package:flutter/material.dart';

class SampleIcon extends StatelessWidget {
  SampleIcon({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      height: 80,
      width: 30,
      child: const Text(
        "テスト１",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
