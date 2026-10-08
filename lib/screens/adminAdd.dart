import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hotel/models/hotel.dart';

class Destinos extends StatefulWidget {
  const Destinos({super.key});



  @override
  State<Destinos> createState() => _Destinos();
}

class _Destinos extends State<Destinos> {
  void regitrarHotel(Hotel hotel){
    print("se ah registrado correctamente");
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [

                TextField(
                decoration: InputDecoration(label: Text("name"))),
                TextField(decoration: InputDecoration(label: Text("Ubicacion"))),
                TextField(decoration: InputDecoration(label: Text("descripcion"))),
                TextField(decoration: InputDecoration(label: Text("precio"))),
                TextField(decoration: InputDecoration(label: Text("imagen"))),
                TextField(decoration: InputDecoration(label: Text("categoria"))),
                TextField(decoration: InputDecoration(label: Text("capacidad "))),
                TextField(decoration: InputDecoration(label: Text("baños "))),
                TextField(decoration: InputDecoration(label: Text("habitaciones "))),
                TextField(decoration: InputDecoration(label: Text("sevicios"))),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text("Add"))

            ],
          ),
        ),
      ),
    );
  }
}
