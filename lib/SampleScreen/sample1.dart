import 'package:flutter/material.dart';
import 'package:flutter_learning_sample/SampleScreen/sample2.dart';
import 'package:flutter_learning_sample/sampleComponent/sampleButton.dart';

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
      body: Container(
        child: SafeArea(
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.deepOrange,
                  height: 80,
                  width: 30,
                  child: const Text(
                    "テスト１",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SampleButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Sample2();
                      }));
                    }),
                    title: 'テスト2',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
