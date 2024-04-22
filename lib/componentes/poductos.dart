import 'package:flutter/material.dart';
import 'package:tienda1/paginas/detalles_producto.dart';

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
    return GridView.builder(
      itemCount: lista_productos.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return ProdIndividual(
          nombre_producto: lista_productos[index]["nombre"],
          foto_producto: lista_productos[index]["foto"],
          precio_antiguo: lista_productos[index]["precio_antiguo"],
          precio: lista_productos[index]["precio"],
        );
      },
    );
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
    return Card(
      child: Hero(
        tag: nombre_producto,
        child: Material(
          child: InkWell(
            //Usamos función de flecha para acortar el código a escribir, context es la ruta actuasl del widget en la pagina, push indica que vamos a poner algo encima
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetallesProducto())),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    nombre_producto,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "$precio€",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "$precio_antiguo€",
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                foto_producto,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
