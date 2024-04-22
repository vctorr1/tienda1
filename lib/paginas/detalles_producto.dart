import 'package:flutter/material.dart';

class DetallesProducto extends StatefulWidget {
  //Variables para la pagina de producto
  final nombre_producto_detalle;
  final nuevo_precio_producto_detalle;
  final precio_producto_detalle;
  final foto_producto_detalle;

  const DetallesProducto({
    super.key,
    this.nombre_producto_detalle,
    this.nuevo_precio_producto_detalle,
    this.precio_producto_detalle,
    this.foto_producto_detalle,
  });

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

      //Cuerpo de la pagina
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.foto_producto_detalle),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.nombre_producto_detalle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.nuevo_precio_producto_detalle}€",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${widget.precio_producto_detalle}€",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //Detalles del producto
          Row(
            children: <Widget>[
              //Boton de colores
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Elige tu color"),
                            actions: <Widget>[
                              MaterialButton(
                                //Boton de cerrar
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Cerrar"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Colores")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),

              //Cantidad
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Cantidad"),
                            content: Text("Elige las unidades"),
                            actions: <Widget>[
                              MaterialButton(
                                //Boton de cerrar
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Cerrar"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Uds")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),

              //Tallas
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Talla"),
                            content: Text("Elige tu talla"),
                            actions: <Widget>[
                              MaterialButton(
                                //Boton de cerrar
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Cerrar"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Tallas")),
                      Expanded(child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),
          //Boton de comprar
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Comprar Ahora")),
              ),

              //Boton de agregar al carrito
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            ],
          ),

          Divider(),

          //Detalles del producto
          ListTile(
            title: Text("Detalles del producto"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
          ),

          Divider(),

          //Nombre del producto en los detalles
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                "Nombre del producto",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(widget.nombre_producto_detalle),
            )
          ]),

          //EDITAR MAS ADELANTE
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                "Marca/provisional",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text("marca/provisional"),
            )
          ]),

          //EDITAR MAS ADELANTE
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
              child: Text(
                "Provisional",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Text("Provisional"),
            )
          ]),
        ],
      ),
    );
  }
}
