
import 'package:flutter/material.dart';

class Botones extends StatefulWidget {
      //creamos variables para modificar caracteristicas de los botones
     final String texto;
     final Color colorBoton, colorTexto;
    final double width,heigth;

  const Botones({
    Key key, 
    @required this.texto,  //agregamos las variables requeridas
    @required this.colorBoton, 
    @required this.colorTexto, 
    @required this.width, 
    @required this.heigth
    }) : super(key: key);


  @override
  _BotonesState createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heigth,
      width: widget.width,
      margin: EdgeInsets.only(left: 13),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
          onPressed: (){},
          child: Text(widget.texto,style: TextStyle(color: widget.colorTexto,fontSize: 11),),
          color: widget.colorBoton,
       ),
    );
  }
}