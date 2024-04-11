import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override //creamos un estado para la pagina de inicio
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Elevacion de la barra superior sobre el fondo
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Vaca de Quentas', style: TextStyle(color: Colors.white)),
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
      drawer: Drawer(
        child: ListView(
          //Creamos lista de widgets
          children: <Widget>[
            //Cabecera
            UserAccountsDrawerHeader(
              accountName: Text('nombre ejemplo'),
              accountEmail: Text('ejemplo@email.com'),
              //Foto de perfil
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),

            //Cuerpo
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Inicio'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Perfil'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Pedidos'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categorías'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favoritos'),
                leading: Icon(Icons.favorite),
              ),
            ),

            //Separacion entre categorias
            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Opciones'),
                leading: Icon(Icons.settings, color: Colors.blue),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Sobre mí'),
                leading: Icon(Icons.help, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
