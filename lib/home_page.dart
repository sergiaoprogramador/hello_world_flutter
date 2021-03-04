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
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ),
      ),
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
