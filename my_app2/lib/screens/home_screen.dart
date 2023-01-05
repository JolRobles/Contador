import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30, color: Colors.blue);
    int counter = 10;
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 10.0,
      ),
      // backgroundColor: Colors.indigo,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Numero de clicks",
            style: fontSize30,
          ),
          Text(
            '$counter',
            style: fontSize30,
          ),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print("Hola mundo: $counter");
        },
      ),
    );
  }
}
