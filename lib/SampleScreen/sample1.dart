import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning_sample/SampleScreen/sample2.dart';
import 'package:flutter_learning_sample/sampleComponent/sampleButton.dart';
import 'package:flutter_learning_sample/sampleComponent/sampleIcon.dart';

class Sample1 extends StatefulWidget {
  const Sample1({Key? key}) : super(key: key);

  @override
  State<Sample1> createState() => _Sample1State();
}

class _Sample1State extends State<Sample1> {
  void getGreeting() async {
    print('こんにちは！');
    // Future(() {
    //   Navigator.push(context, MaterialPageRoute(builder: (context) {
    //     return Sample2();
    //   }));
    // });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getGreeting();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sample1",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print('詳細画面');
            },
            child: SampleButton(
              onTap: () {
                print('smaple1');
              },
              title: 'TOEIC８００',
            ),
          ),
          GestureDetector(
            onTap: () {
              print('詳細画面２');
            },
            child: SampleButton(
              onTap: () {
                print('sample2');
              },
              title: 'TOEIC900',
            ),
          ),
        ],
      ),
    );
  }
}
