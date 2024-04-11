import 'package:flutter/material.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
