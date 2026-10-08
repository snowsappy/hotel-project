import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController usuario = TextEditingController();
  TextEditingController contra = TextEditingController();
  String adminusu = "linda@gmail.com";
  String admincontra = "hola";

  void iniciar() {
    if (usuario.text==adminusu || contra.text.isEmpty==admincontra) {
        Navigator.pushNamed(context, "/Inicio",arguments: usuario.text );

    }else if(usuario.text!=adminusu && contra.text.isEmpty!=admincontra){
      print("es un usuario normal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 40,
            children: [
              TextFormField(
                validator: (valor) {
                  if (valor==null || valor.isEmpty) {
                    return "the field is empty";
                  }
                },
                controller: usuario,
              ),
              TextFormField(validator: (valor) {
                if (valor==null || valor.isEmpty) {
                  return "the field is empty";
                }
              }, controller: contra),
              ElevatedButton(onPressed: iniciar, child: Text("Log in")),
            ],
          ),
        ),
      ),
    );
  }
}
