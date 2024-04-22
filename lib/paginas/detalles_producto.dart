import 'package:flutter/material.dart';

class DetallesProducto extends StatefulWidget {
  const DetallesProducto({super.key});

  @override
  State<DetallesProducto> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetallesProducto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Elevacion de la barra superior sobre el fondo
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Múdez', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
