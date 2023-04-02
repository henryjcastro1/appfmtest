import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
      home: const MyHomePage(title: 'Inicio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override


  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override

  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: FittedBox(
          fit: BoxFit.cover,
          child: Image.network(
            'https://i.ibb.co/GxKyn1d/FMInicio.jpg',
          ),
        ),
      ),

      floatingActionButton: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const pantallausuario()),
            );
            // Agrega aquí el código que quieres que se ejecute al presionar el botón
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            fixedSize: Size(200, 50),

          ),

          child: Text('INGRESAR'),
        ),
      ),

      // Pie de página
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 20.0,
          color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '© 2023 - Mi App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
// AQUI ESTA LA SEGUNDA PANTALLA DE LA APP

class pantallausuario extends StatelessWidget {
  const pantallausuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/fm.jpg"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Usuario",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),


              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LinearProgressScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),

      ),
      // Pie de página
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 25.0,
          color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Registrar vendedor aquí',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// AQUI ESTA LA TERCERA PANTALLA DE LA APP MENU PRINCIPAL
class menuprincipal extends StatelessWidget {
  const menuprincipal({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Menú Principal'),
        actions: <Widget>[
          IconButton(
            color: Colors.blueGrey[200]?.withOpacity(0.5), // Color de fondo semi-transparente            onSelected: (value) {},
            icon: Icon(Icons.sync),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.blueGrey[200]?.withOpacity(0.5), // Color de fondo semi-transparente            onSelected: (value) {},
            icon: Icon(Icons.notification_add),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            color: Colors.blueGrey[200]?.withOpacity(0.9), // Color de fondo semi-transparente            onSelected: (value) {},
            itemBuilder: (BuildContext context) {
              return {'Sincronizar imágenes', 'Configuración', 'Salir'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/FMlogoabajo.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaEnBlanco()),
                );

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shopping_cart), //agregar el icono

                    Text('Generar pedido'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Consultapedido()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.search), // Icono de búsqueda agregado aquí
                    Text('Consultar pedido'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shopping_cart), //agregar el icono

                    Text('Presupuesto'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shopping_cart), //agregar el icono

                    Text('Productos'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.monetization_on), //agregar el icono

                    Text('Cuentas por cobrar'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month), //agregar el icono

                    Text('Plan de visitas'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.auto_graph), //agregar el icono

                    Text('Indicadores'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add_business_outlined), //agregar el icono

                    Text('Registro de visita'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Agregar un espacio de 10 píxeles entre los botones
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(200, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.camera_alt), //agregar el icono

                    Text('Reseñas de fotos'),
                    Opacity(
                      opacity: 0.0, // Opcional: para evitar que este espacio sea detectado como un botón
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Agregar un espacio de 10 píxeles entre los botones
            ],
          ),

        ),

      ),
      // Pie de página
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 25.0,
          color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, // Cambio aquí
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Bienvenido:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  'Nombre usuario',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Text(
                  'Ultima hora act:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  '19-03-2023 11:36 AM',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// AQUI ESTA LA TERCERA PANTALLA DE LA APP GENERAR PEDIDO

class PantallaEnBlanco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Cliente y pago'),
        actions: <Widget>[
          IconButton(
            color: Colors.blueGrey[200]?.withOpacity(0.5),
            icon: Icon(Icons.check),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.blueGrey[200]?.withOpacity(0.5),
            icon: Icon(Icons.sync),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            color: Colors.blueGrey[200]?.withOpacity(0.9),
            itemBuilder: (BuildContext context) {
              return {'Inicio', 'Salir'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/FMlogoabajo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Presione el botón para seleccionar un cliente',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),  //Espacio entre cliente y el botón
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListaPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 8.0),
                        Text('Cliente'),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent[200]?.withOpacity(0.5), // Color de fondo semi-transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(150, 50),
                    ),
                  ),
                  SizedBox(height: 10),  //Espacio entre el botón y el texto
                  Text(
                    'Los datos del cliente seleccionado son los siguientes:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Nombre:      ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'HENRY JHOAN CASTRO',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigoAccent, // Cambia el color a rojo
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),  //Espacio entre cliente y el botón

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'RIF:              ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'J-21183940',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigoAccent, // Cambia el color a rojo
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),  //Espacio entre cliente y el botón

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Teléfono:    ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: '3124048941',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigoAccent, // Cambia el color a rojo
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\nSaldo del cliente:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Cliente con facturas pendientes:     ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                TextSpan(
                                  text: 'Si/No',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.indigoAccent, // Cambia el color a rojo
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '\nLímite de credito:     ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                TextSpan(
                                  text: '0,00',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.redAccent, // Cambia el color a rojo
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),  //Espacio entre cliente y el botón
                  Text(
                    '\nFacturar:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Moneda:     ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          value: 'USD',
                          onChanged: (String? newValue) {},
                          dropdownColor: Colors.blueGrey[200], // Aquí se establece el color de fondo
                          items: <String>['USD', 'COP', 'BS',]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Codición de pago:     ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          value: 'CONTADO',
                          onChanged: (String? newValue) {},
                          dropdownColor: Colors.blueGrey[200], // Aquí se establece el color de fondo
                          items: <String>['CONTADO', '15 DIAS',]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Lista de precio:     ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          value: 'PREMIUM',
                          onChanged: (String? newValue) {},
                          dropdownColor: Colors.blueGrey[200], // Aquí se establece el color de fondo
                          items: <String>['PREMIUM', 'ECONOMICA', 'TRADICIONAL',]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 25.0,
          color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Bienvenido:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  'Nombre usuario',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Text(
                  'Ultima hora act:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  '19-03-2023 11:36 AM',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// AQUI ESTA LA CUARTA PANTALLA DE LA CONSULTA PEDIDOS

class Consultapedido extends StatefulWidget {
  const Consultapedido({Key? key}) : super(key: key);

  @override
  State<Consultapedido> createState() => _ConsultapedidoState();
}

class _ConsultapedidoState extends State<Consultapedido> {
  DateTime? _selectedDate;
  DateTime? _selectedDate2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción del botón flotante
        },
        backgroundColor: Colors.indigoAccent,
        child: Icon(Icons.search),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Filtro de pedidos'),
        actions: <Widget>[
          IconButton(
            color: Colors.blueGrey[200]?.withOpacity(0.5),
            icon: Icon(Icons.sync),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.blueGrey[200]?.withOpacity(0.5),
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.blueGrey[200]?.withOpacity(0.5),
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/FMlogoabajo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Filtro dinámico',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),  //Espacio entre cliente y el botón
                  Text(
                    'Pedidos',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.indigoAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),  //Espacio entre cliente y el botón
                  Text(
                    'Seleccione rango de la fecha:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),  //Espacio entre cliente y el botón

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            final DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2015, 8),
                                lastDate: DateTime(2101));
                            if (picked != null) {
                              setState(() {
                                _selectedDate = picked;
                              });
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Desde:',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  if (_selectedDate != null)
                                    TextSpan(
                                      text: '\n${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigoAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            final DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2015, 8),
                                lastDate: DateTime(2101));

                            if (picked != null) {
                              setState(() {
                                _selectedDate2 = picked;
                              });
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'Hasta:',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  if (_selectedDate2 != null)
                                    TextSpan(
                                      text: '\n${_selectedDate2!.day}/${_selectedDate2!.month}/${_selectedDate2!.year}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.indigoAccent,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),  //Espacio entre cliente y el botón

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 50.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Estado:     ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          value: 'Todos',
                          onChanged: (String? newValue) {},
                          dropdownColor: Colors.blueGrey[200], // Aquí se establece el color de fondo
                          items: <String>['Todos', 'Enviado', 'Aprobado', 'Exportado', 'Facturado', 'Anulado',]
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 25.0,
          color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Bienvenido:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  'Nombre usuario',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.0),
                child: Text(
                  'Ultima hora act:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.0),
                child: Text(
                  '19-03-2023 11:36 AM',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// AQUI ESTA LA PANTALLA DE LINEALPROGRESS

class LinearProgressScreen extends StatefulWidget {
  @override
  _LinearProgressScreenState createState() => _LinearProgressScreenState();
}
class _LinearProgressScreenState extends State<LinearProgressScreen> {
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    // Iniciar temporizador
    Timer.periodic(Duration(milliseconds: 20), (Timer timer) {
      setState(() {
        _progressValue += 0.01;
        if (_progressValue >= 1.0) {
          timer.cancel(); // Detener temporizador
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => menuprincipal()),
          ); // Navegar a la siguiente pantalla
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/fm.jpg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              value: _progressValue,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.indigoAccent),
            ),
          ],
        ),
      ),

    );
  }
}

//PANTALLA PARA LISTAR CLIENTES.
class ListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Seleccionar un cliente'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/FM1sinlogo.png"), // Ruta de la imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Codigo'),
            ),
            ListTile(
              title: Text('Elemento 2'),
            ),
            ListTile(
              title: Text('Elemento 3'),
            ),
            ListTile(
              title: Text('Elemento 4'),
            ),
            ListTile(
              title: Text('Elemento 5'),
            ),
          ],
        ),
      ),
    );
  }
}