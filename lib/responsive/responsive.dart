import 'dart:math' as math;

import 'package:flutter/cupertino.dart';

class Responsive{
  double width,heigth,inch;
  Responsive(BuildContext context){
  final size = MediaQuery.of(context).size;
  width = size.width;
  heigth = size.height;
  //c2 =a2+b2 => c = sqrt(a2+b2)
  //c es diagonal, a = ancho y b= alto
  inch= math.sqrt(math.pow(width, 2) + math.pow(heigth, 2) );
}
//metodo para obtener 10% de ancho
double wp(double percent){
  return width * percent/100;
 }
 double hp(double percent){
  return heigth * percent/100;
 }
 double ip(double percent){
  return inch * percent/100;
 }
}