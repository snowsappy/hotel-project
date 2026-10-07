import 'package:flutter/cupertino.dart';

class Hotel {
  String nombre;
  String descripcion;
  bool favoritos;
  String image;

  Hotel({
    required this.nombre,
    required this.favoritos,
    required this.descripcion,
    required this.image,
  });
}
