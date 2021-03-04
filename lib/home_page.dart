// Stateful para componentes com alterações de estados
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageStage();
  }
}

class HomePageStage extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Sergião'),
      ),
      body: Center(
          child: GestureDetector(
        child: Text(
          "Clique para incrementar: $counter",
          style: TextStyle(fontSize: 20.0),
        ),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one_rounded),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
