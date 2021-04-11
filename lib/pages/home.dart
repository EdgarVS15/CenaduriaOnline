import 'package:cenaduria_online/responsive/responsive.dart';
import 'package:cenaduria_online/widgets/botones.dart';
import 'package:cenaduria_online/widgets/texto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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
          children: [_cabecera(), _body()],
        ),
      ),
    );
  }

  Widget _cabecera() {
    final responsive = Responsive(context);
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: responsive.hp(15),
      decoration: BoxDecoration(
          color: Color.fromRGBO(46, 53, 67, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          //agregamos los botones
          Botones(
            texto: "Inicio",
            colorTexto: Colors.white,
            colorBoton: Color.fromRGBO(70, 188, 117, 1),
            heigth: responsive.hp(8),
            width: responsive.wp(13),
          ),
          Botones(
            texto: "Comidas",
            colorTexto: Colors.white,
            colorBoton: Color.fromRGBO(199, 94, 94, 1),
            heigth: responsive.hp(8),
            width: responsive.wp(13),
          ),
          Botones(
            texto: "Pedidos",
            colorTexto: Colors.white,
            colorBoton: Color.fromRGBO(199, 94, 94, 1),
            heigth: responsive.hp(8),
            width: responsive.wp(13),
          ),
          Botones(
            texto: "Acceder",
            colorTexto: Colors.white,
            colorBoton: Color.fromRGBO(111, 106, 255, 1),
            heigth: responsive.hp(7),
            width: responsive.wp(13),
          ),
          Texto(
            size: responsive.ip(4.5),
            texto: "Cenaduria Mary",
          )
        ],
      ),
    );
  }

  Widget _body() {
    var size = MediaQuery.of(context).size;
    final responsive = Responsive(context);
    return Container(
        margin: EdgeInsets.only(top: 4),
        width: size.width,
        height: responsive.hp(76.6),
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(46, 53, 67, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.3),
                  child: Texto(texto: "Abierto", size: responsive.ip(3)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Texto(texto: "Platillos", size:  responsive.ip(3)),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.25),
                  child: Texto(texto: "Fecha: 25/03/2021", size:  responsive.ip(1.7)),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Container(
                         width: responsive.wp(7),
                        child: Image.asset("assets/boton anterior.png")),
                    CupertinoButton(
                        child: Container(
                          margin: EdgeInsets.only(left: 40,right: 40),
                             width: responsive.wp(51),
                           decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            children: [
                              Container(
                                 margin: EdgeInsets.only(left: 15,right: 15),
                                   child: Image.asset("assets/img1.png")),
                              Container(
                                child: Texto(texto: "Tacos", size: 20),
                              )
                            ],
                          ),
                        ),
                        onPressed: () {}),
                         Container(
                        width: responsive.wp(7),
                        child: Image.asset("assets/boton siguiente.png")),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
