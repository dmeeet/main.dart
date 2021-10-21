import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LetterU(),
    );
  }
}

class LetterU extends StatelessWidget {
  const LetterU({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
                Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 150.0),
                    height: 50,
                    width: 50,
                    color: Colors.blueAccent,
                  ),
                ]),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 150.0),
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
