import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.blueAccent,
            appBar:AppBar(
          title:Text('Magic 8 ball'),
              backgroundColor:Colors.blue,
      ),
      body:ball(),
      ),

    ),
  );
}
class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int change=1;
  void changeface(){
    setState(() {
      change=Random().nextInt(5)+1;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Center(
      child:Row(children:<Widget>[
        Expanded(
          child:FlatButton(
            onPressed: (){
              changeface();
            },
            child:Image.asset("images/ball$change.png")
          )
        )
      ])
    );
  }
}

