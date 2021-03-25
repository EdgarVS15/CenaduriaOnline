import 'package:flutter/material.dart';

class Texto extends StatefulWidget {
  Texto({Key key, this.texto}) : super(key: key);
  final String texto;
  @override
  _TextoState createState() => _TextoState();
}

class _TextoState extends State<Texto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Text(
        widget.texto,
        style: TextStyle(fontSize: 27,color: Colors.white,fontStyle: FontStyle.italic),
        ),
    );
  }
}