import 'package:flutter/material.dart';

class ProductosCarrito extends StatefulWidget {
  const ProductosCarrito({super.key});

  @override
  State<ProductosCarrito> createState() => _ProductosCarritoState();
}

class _ProductosCarritoState extends State<ProductosCarrito> {
  var productos_carro = [
    {
      "nombre": "Collar multicolor",
      "foto":
          "imagenes/productos/quenta/Archicos_quenta_nuevos_collar_multicolor_cereza.jpg",
      "precio": 15,
      "tamano": "L",
      "color": "cereza",
      "cantidad": 1
    },
    {
      "nombre": "Collar multicolor",
      "foto":
          "imagenes/productos/quenta/Archicos_quenta_nuevos_collar_multicolor_cereza.jpg",
      "precio": 15,
      "tamano": "L",
      "color": "cereza",
      "cantidad": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productos_carro.length,
      itemBuilder: (context, index) {
        return ProdCarritoIndividual(
          carrito_nombre_producto: productos_carro[index]["nombre"],
          carrito_foto_producto: productos_carro[index]["foto"],
          carrito_tamano_producto: productos_carro[index]["tamano"],
          carrito_precio: productos_carro[index]["precio"],
          carrito_color_producto: productos_carro[index]["color"],
          carrito_cantidad_producto: productos_carro[index]["cantidad"],
        );
      },
    );
  }
}

class ProdCarritoIndividual extends StatelessWidget {
  //Variables
  final carrito_nombre_producto;
  final carrito_foto_producto;
  final carrito_tamano_producto;
  final carrito_precio;
  final carrito_color_producto;
  final carrito_cantidad_producto;

  const ProdCarritoIndividual({
    super.key,
    this.carrito_nombre_producto,
    this.carrito_foto_producto,
    this.carrito_tamano_producto,
    this.carrito_precio,
    this.carrito_color_producto,
    this.carrito_cantidad_producto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //Si hay problemas con las imagenes del carrito, anadir limites de tamano a la imagen
        leading: Image.asset(carrito_foto_producto),
        title: Text(carrito_nombre_producto),
        subtitle: Column(
          children: <Widget>[
            //Celdas dentro de columna para formato
            Row(
              children: <Widget>[
                //Tamaño
                Expanded(
                  child: Text(
                    "Tamaño: " + carrito_tamano_producto,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                //Color
                Expanded(
                  child: Text("Color: " + carrito_color_producto),
                ),

                // Cantidad
                Expanded(
                  child: Text(
                      " Cantidad: " + carrito_cantidad_producto.toString()),
                ),
              ],
            ),

            //Precio provisional
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                carrito_precio.toString() + "€",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )
          ],
        ),
        trailing: Column(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
