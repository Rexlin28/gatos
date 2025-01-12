import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../config/config.dart';

class Celda extends StatelessWidget {
  final estados inicial;
  final double ancho, alto;
  final Function() press;

  const Celda(
      {required this.inicial, required this.ancho, required this.alto, required this.press, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: alto, width: ancho,
      child: CupertinoButton(
        child: mostrar(),
        onPressed: press,
      ),
    );
  }

  Widget mostrar() {
    if (inicial == estados.vacio) {
      return SizedBox(height: alto, width: ancho,);
    }
    if (inicial == estados.circulo) {
      return Image.asset("imagenes/o.png");
    } else {
      return Image.asset("imagenes/x.png");
    }
  }
}

