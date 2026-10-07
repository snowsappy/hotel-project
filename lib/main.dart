import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/routes/routes.dart';
import 'package:hotel/screens/adminAdd.dart';
import 'package:hotel/screens/inicio.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: Rutas.rutaInicial,
      routes
      :Rutas.Pantallas,
    );
  }

}



