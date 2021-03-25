
import 'package:cenaduria_online/widgets/botones.dart';
import 'package:cenaduria_online/widgets/texto.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
            children: [
              _cabecera(),
              _body()
            ],
        ),
      ),
    );
  }

Widget _cabecera(){
  var size=MediaQuery.of(context).size;
  return Container(
    width: size.width,
    height: size.height * 0.12,
    decoration: BoxDecoration(
      border: Border.all(),
      color: Color.fromRGBO(46, 53, 67, 1),
      borderRadius: BorderRadius.circular(15)
    ),
    child: Row(
      children: [
        //agregamos los botones
        Botones(
          texto: "Inicio",
          colorTexto: Colors.white,
          colorBoton: Color.fromRGBO(70, 188, 117, 1),
          heigth: 28,
          width: 80,
        ),
        Botones(
          texto: "Comidas",
          colorTexto: Colors.white,
          colorBoton: Color.fromRGBO(199, 94, 94, 1),
          heigth: 28,
          width: 80,
        ),
        Botones(
          texto: "Pedidos",
          colorTexto: Colors.white,
          colorBoton: Color.fromRGBO(199, 94, 94, 1),
          width: 80,
          heigth: 28,
        ),
        Botones(
          texto: "Acceder",
          colorTexto: Colors.white,
          colorBoton: Color.fromRGBO(111, 106, 255, 1),
          width: 75,
          heigth: 23,
        ),
        Texto(texto: "Cenaduria Mary",
        )
      ],
    ),
  );
}

Widget _body(){
   var size=MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.only(top:4),
    width: size.width,
    height: size.height * 0.77,
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.circular(20),
      color: Color.fromRGBO(46, 53, 67, 1),
    ),
  );
}

}