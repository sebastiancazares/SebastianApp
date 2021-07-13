import 'package:flutter/material.dart';
import 'package:sebastianapp/models/personaje_model.dart';

class DetallePersonaje extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersonajeModel personaje =
        ModalRoute.of(context)!.settings.arguments as PersonajeModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(personaje.name!),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.network(
              personaje.image!,
              height: 300.0,
            ),
            SizedBox(height: 15),
            Text('Nombre:', style: TextStyle(color: Colors.blue)),
            Text(
              personaje.name!,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 15),
            Text('Estado:', style: TextStyle(color: Colors.blue)),
            Text(
              personaje.status!,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 15),
            Text('Genero:', style: TextStyle(color: Colors.blue)),
            Text(
              personaje.gender!,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 15),
            Text('Especie:', style: TextStyle(color: Colors.blue)),
            Text(
              personaje.species!,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 15),
            Text('Tipo:', style: TextStyle(color: Colors.blue)),
            Text(
              personaje.type!,
              style: TextStyle(fontSize: 20),
            ),
            Text('Origen y locacion:', style: TextStyle(color: Colors.blue)),
            Text(
              personaje.origin!,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              personaje.location!,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
