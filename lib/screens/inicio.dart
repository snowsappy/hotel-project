import 'package:flutter/material.dart';
import 'package:hotel/utilities/card.dart';

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  State<Inicio> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  final lista = [
    Carta(
      nombre: "Mountain rainer,USA",
      description: "Paradise area",
      image: "images/hotel.jpg",
    ),
    Carta(
      nombre: "Mayami hotel",
      description: "beach hotel",
      image: "images/playa.jpg",
    ),
    Carta(
      nombre: "lucistic spa",
      description: "Forest retirement",
      image: "images/hotel3.jpg",
    ),
    Carta(
      nombre: "similand island",
      description: "Malasia idonkonow",
      image: "images/casa.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text(
            "discover",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          centerTitle: false,
          actions: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(600),
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.black, size: 23),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Find places",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            Container(
              height: 450,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lista.length,
                itemBuilder: (context, index) => Carta(
                  nombre: lista[index].nombre,
                  description: lista[index].description,
                  image: lista[index].image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
