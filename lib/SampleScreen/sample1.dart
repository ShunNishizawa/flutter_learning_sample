import 'package:flutter/material.dart';

class Sample1 extends StatefulWidget {
  const Sample1({Key? key}) : super(key: key);

  @override
  State<Sample1> createState() => _Sample1State();
}

class _Sample1State extends State<Sample1> {
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
                  height:80,
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
                  child: MaterialButton(
                    onPressed: () {
                      print('ボタンが押されました');
                    },
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
