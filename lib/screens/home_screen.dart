import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Counter App',
            style: TextStyle(fontSize: 24),
          ),
          // Text('$counter', style: TextStyle(fontSize: 24, color: Colors.black54),)
          AnimatedFlipCounter(
            duration: Duration(milliseconds: 500),
            value: counter, // pass in a value like 2014
            textStyle: TextStyle(fontSize: 42),
          )
        ],
      )),
      floatingActionButton: _buttons(),
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: Icon(Icons.remove),
            backgroundColor: Colors.red,
            onPressed: () {
              if (counter > 0) {
                setState(() {
                  counter--;
                });
              }
            }),
        SizedBox(width: 45),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            backgroundColor: Colors.blue,
            onPressed: () {
              setState(() {
                counter = 0;
              });
            }),
        SizedBox(width: 45),
        FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                counter++;
              });
            }),
        SizedBox(width: 45),
      ],
    );
  }
}
