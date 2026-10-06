import 'package:flutter/material.dart';

class Carta extends StatelessWidget {
  Carta(
      {super.key, required this.nombre, required this.description,required this.image});

  String nombre;
  String description;
  String image;

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
            
            Positioned.fill(
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  nombre,
                  style: TextStyle(fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  description,
                  style: TextStyle(fontSize: 20,
                    color: Colors.white,

                  ),
                ),

                ),],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
