import 'package:flutter/material.dart';
import 'package:hotel/hotel.dart';
import 'package:hotel/utilities/card.dart';
import 'package:hotel/utilities/product.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  final lista = [
    Hotel(
      nombre: "Mountain rainer,USA",
      descripcion: "Paradise area",
      image: "images/hotel.jpg",
        favoritos: false
    ),
    Hotel(
      nombre: "Mayami hotel",
      descripcion: "beach hotel",
      image: "images/playa.jpg",
        favoritos: false
    ),
    Hotel(
      nombre: "lucistic spa",
      descripcion: "Forest retirement",
      image: "images/hotel3.jpg",
        favoritos: false
    ),
    Hotel(
      nombre: "similand island",
      descripcion: "Malasia idonkonow",
      image: "images/casa.jpg",
        favoritos: false
    ),
  ];
  final listi = [
    Hotel(
      nombre: "Mountain rainer,USA",
      descripcion: "Paradise area",
      image: "images/hotel.jpg",
        favoritos: false
    ),
    Hotel(
      nombre: "Mayami hotel",
      descripcion: "beach hotel",
      image: "images/playa.jpg",
        favoritos: false
    ),
    Hotel(
      nombre: "lucistic spa",
      descripcion: "Forest retirement",
      image: "images/hotel3.jpg",
        favoritos: false
    ),
    Hotel(
      nombre: "similand island",
      descripcion: "Malasia idonkonow",
      image: "images/casa.jpg",
      favoritos: false


    ),
  ];
  bool agregarFvoritos(int indi){
    print("funciona");
    lista[indi].favoritos=!lista[indi].favoritos;
    print(lista[indi].favoritos);
    print(indi);
    setState(() {
    });
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101d25),
      drawer: Drawer(
        child: Column(
          children: [SizedBox(height: 300,),
            ListTile(leading:Icon( Icons.add),onTap:()=>Navigator.pushNamed(context, "/agregar") ,title: Text("New destination"),)
          ],
        ),
      ),appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          "where you wanna stay,\nlinda?",
          style: TextStyle(
            color: Colors.white,

            fontSize: 20,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(600),
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.black, size: 30),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Find places",
                  style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 450,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lista.length,

                itemBuilder: (context, index) => Carta(
                  hotel: lista[index],
                  algo:()=>agregarFvoritos(index)
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Near to you", style: TextStyle(color: Colors.white,fontSize: 24)),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15
                ),
                itemCount: lista.length,
                itemBuilder: (context, index) =>
                    Cartapresentacion(hotel: listi[index],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
