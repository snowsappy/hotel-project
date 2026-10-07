import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hotel/models/hotel.dart';

class Carta extends StatelessWidget {
  const Carta({
    super.key,
    required this.hotel,required this.algo

  });
  final  VoidCallback algo;
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 300,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(20),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(child: Image.asset(hotel.image, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      hotel.nombre,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      hotel.descripcion,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0x57ededed),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child:  GestureDetector(onTap:algo,
                    child: Icon(hotel.favoritos?
                    Icons.favorite:Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
