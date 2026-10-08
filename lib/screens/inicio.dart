import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel/controllers/hotelControllers.dart';

import 'package:hotel/models/hotel.dart';
import 'package:hotel/utilities/card.dart';
import 'package:hotel/utilities/product.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  String filtro="";
  final lista = [
    Hotel(
      nombre: "Mountain rainer,USA",
      descripcion: "Paradise area",
      image: "images/hotel.jpg",
      favoritos: false,
    ),
    Hotel(
      nombre: "Mayami hotel",
      descripcion: "beach hotel",
      image: "images/playa.jpg",
      favoritos: false,
    ),
    Hotel(
      nombre: "lucistic spa",
      descripcion: "Forest retirement",
      image: "images/hotel3.jpg",
      favoritos: false,
    ),
    Hotel(
      nombre: "similand island",
      descripcion: "Malasia idonkonow",
      image: "images/casa.jpg",
      favoritos: false,
    ),
  ];
  bool buscando = false;
  final minicarta_lista = [
    Hotel(
      nombre: "Mountain rainer,USA",
      descripcion: "Paradise area",
      image: "images/hotel.jpg",
      favoritos: false,
    ),
    Hotel(
      nombre: "Mayami hotel",
      descripcion: "beach hotel",
      image: "images/playa.jpg",
      favoritos: false,
    ),
    Hotel(
      nombre: "lucistic spa",
      descripcion: "Forest retirement",
      image: "images/hotel3.jpg",
      favoritos: false,
    ),
    Hotel(
      nombre: "similand island",
      descripcion: "Malasia idonkonow",
      image: "images/casa.jpg",
      favoritos: false,
    ),
  ];

  void filtrar(){

  }
  void animar() {
    buscando = !buscando;
    print(buscando);
    setState(() {});
  }

  bool agregarFvoritos(int indi) {
    print("funciona");
    lista[indi].favoritos = !lista[indi].favoritos;
    print(lista[indi].favoritos);
    print(indi);
    setState(() {});
    return true;
  }

  void buscar(String eso) {
    minicarta_lista.where((x) => x.nombre.contains(eso)).toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    final nombre=ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xff101d25),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 300),
            ListTile(
              leading: Icon(Icons.add),
              onTap: () => Navigator.pushNamed(context, "/Admin/agregar" ),
              title: Text("New destination"),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              onTap: () => Navigator.pushNamed(context, "/Admin/editar"),
              title: Text("manage hotels"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              onTap: () => Navigator.pushNamed(context, "/Admin/agregar"),
              title: Text("Stadistics"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              onTap: () => Navigator.pushNamed(context, "/"),
              title: Text("log out"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu,color: Colors.white,),
              onPressed: () {
                // 3. Al usar Builder, este 'context' ya está debajo del Scaffold
                Scaffold.of(context).openDrawer();
              },
            );
          },
        )
        ,
        forceMaterialTransparency: true,
        title: Text(
          "where you wanna stay,\n$nombre}?",
          style: TextStyle(color: Colors.white,),
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
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: buscando ? 250 : 40,
                    child: buscando
                        ? TextField(
                            onChanged: (e) => buscar(e),
                            autofocus: true,
                            decoration: InputDecoration(
                              hint: Text("search destination"),
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    buscando = false;
                                  });
                                },
                                icon: Icon(Icons.close),
                              ),
                            ),
                          )
                        : IconButton(
                            onPressed: animar,
                            icon: Icon(Icons.search),
                          ),
                  ),
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
                child: Row(
                  children: [
                    /*TextButton(
                      onPressed: () {

                      },
                      child: Text("All"),
                    ),*/
                    TextButton(
                      onPressed: () {filtro="forest";
                        lista.where((x) => x.nombre.contains("Forest")).toList();
                        setState(() {

                        });
                      },
                      child: Text("Field"),
                    ),
                    TextButton(
                      onPressed: () {
                        lista.where((x) => x.nombre.contains("Forest")).toList();
                      },
                      child: Text("Mountain"),
                    ),
                    TextButton(
                      onPressed: () {
                        lista.where((x) => x.nombre.contains("Forest")).toList();
                      },
                      child: Text("Beach"),
                    ),
                    TextButton(
                      onPressed: () {
                        lista.where((x) => x.nombre.contains("Forest")).toList();
                      },
                      child: Text("Forest"),
                    ),
                  ],
                ),
              ),
            ),
            if(filtro=="")
              Container(
                height: 450,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lista.length,
                  itemBuilder: (context, index) => Carta(
                    hotel: lista[index],
                    algo: () => agregarFvoritos(index),
                  ),
                ),
              ),
            SizedBox(
              height: 80,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(filtro!="" ?"based on your choices":
                  "Near to you",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: lista.length,
                itemBuilder: (context, index) =>
                    Cartapresentacion(hotel: minicarta_lista[index]),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
