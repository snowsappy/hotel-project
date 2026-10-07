import 'package:flutter/material.dart';
import 'package:hotel/hotel.dart';

class Cartapresentacion extends StatelessWidget {
  const Cartapresentacion({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned.fill(child: Image.asset(hotel.image, fit: BoxFit.cover)),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        hotel.nombre,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        hotel.descripcion,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.arrow_forward,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
