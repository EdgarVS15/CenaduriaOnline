import 'package:flutter/material.dart';

class Texto extends StatefulWidget {
  final String texto;
  final double size;

  const Texto({Key key, this.texto, @required this.size}) : super(key: key);

  
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
        style: TextStyle(fontSize: widget.size,color: Colors.white,fontStyle: FontStyle.italic),
        ),
    );
  }
}