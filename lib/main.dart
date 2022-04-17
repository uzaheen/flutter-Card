import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Card"),
            backgroundColor: Colors.yellow,
          ),
          body: MyCard()),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        padding: EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.red,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.album, size: 60),
                title: Text(
                  "Hi",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "this is best",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ButtonBar(
                children: [
                  ElevatedButton(child: const Text("Play"), onPressed: () {}),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Paused'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
