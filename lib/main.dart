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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Column myColumn;
  int counter = 1;

  void _makeRandomData() {
    counter++;

    myColumn = Column(
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(150.0, 150.0, 150.0, 10.0),
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/200/300?random=" +
                      counter.toString())),
            )),
        Container(
          child: Text(
            'Hello world',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: Colors.grey,
                  fontSize: 20,
                ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: Text('Hello, images'),
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.amber,
                Colors.white60,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: myColumn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[400],
        child: Icon(Icons.add_photo_alternate_outlined),
        onPressed: () {
          setState(() {
            _makeRandomData();
          });
        },
        elevation: 20,
        tooltip: 'Get new picture',
      ),
    );
  }
}
