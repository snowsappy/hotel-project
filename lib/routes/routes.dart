import 'package:flutter/cupertino.dart';
import 'package:hotel/screens/adminAdd.dart';
import 'package:hotel/screens/inicio.dart';

class Rutas{
  static String rutaInicial="/";
  static Map<String,WidgetBuilder> Pantallas={
    "/":(BuildContext context)=>Inicio(),
    "/Admin/agregar":(BuildContext context)=> Destinos()
  };
}