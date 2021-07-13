import 'package:flutter/material.dart';
import 'package:sebastianapp/pages/detalle_personaje.dart';
import 'package:sebastianapp/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Rick and Morty',
        theme: ThemeData.dark(),
        initialRoute: '/home',
        routes: {
          '/home': (_) => HomePage(),
          '/detalles': (_) => DetallePersonaje(),
        });
  }
}
