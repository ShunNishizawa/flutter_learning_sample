import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../sampleComponent/sampleIcon.dart';

class Sample2 extends StatefulWidget {
  @override
  State<Sample2> createState() => _Sample2State();
}

class _Sample2State extends State<Sample2> {
  var position = const Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sample2'),
      ),
      body: GestureDetector(
        dragStartBehavior: DragStartBehavior.down,
        onPanUpdate: (DragUpdateDetails) {
          position = DragUpdateDetails.localPosition;
          setState(() {});
        },
        child: Stack(
          children: [
            Positioned(
                left: position.dx,
                top: position.dy,
                child: SampleIcon(title: 'test')),
          ],
        ),
      ),
    );
  }
}
