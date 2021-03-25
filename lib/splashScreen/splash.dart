import 'dart:async';

import 'package:cenaduria_online/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1500), () {
      //tiempo de muestra del splash
       Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => Home(),
        ),
        (route) => false);
    });
    super.initState();
    SystemChrome.setPreferredOrientations([
      //controlamos la posicion de la pantalla
      //lo dejamos en modo horizontal
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Splash"),
        ),
      ),
    );
  }
}
