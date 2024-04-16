import 'package:flutter/material.dart';

class Productos extends StatefulWidget {
  const Productos({super.key});

  @override
  State<Productos> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Productos> {
  var lista_productos = [
    {
      "nombre": "Collar",
      "foto":
          "imagenes/productos/quenta/Archicos_quenta_nuevos_collar_multicolor_cereza.jpg",
      "precio_antiguo": 30,
      "precio": 15,
    },
    {
      "nombre": "Collar",
      "foto":
          "imagenes/productos/quenta/Archicos_quenta_nuevos_collar_multicolor_cereza.jpg",
      "precio_antiguo": 30,
      "precio": 15,
    },
    {
      "nombre": "Collar",
      "foto":
          "imagenes/productos/quenta/Archicos_quenta_nuevos_collar_multicolor_cereza.jpg",
      "precio_antiguo": 30,
      "precio": 15,
    },
    {
      "nombre": "Collar",
      "foto":
          "imagenes/productos/quenta/Archicos_quenta_nuevos_collar_multicolor_cereza.jpg",
      "precio_antiguo": 30,
      "precio": 15,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//Clase para producto individual
class ProdIndividual extends StatelessWidget {
  //Variables del producto
  final nombre_producto;
  final foto_producto;
  final precio_antiguo;
  final precio;

  const ProdIndividual({
    super.key,
    this.nombre_producto,
    this.foto_producto,
    this.precio_antiguo,
    this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
