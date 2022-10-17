import 'package:flutter/material.dart';

class SampleButton extends StatelessWidget {
  SampleButton({required this.title, required this.onTap});

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      elevation: 8,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 100),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
