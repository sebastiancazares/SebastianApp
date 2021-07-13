import 'package:flutter/material.dart';
import 'package:sebastianapp/models/personaje_model.dart';
import 'package:sebastianapp/provider/provider_rickandmorty.dart';

class HomePage extends StatelessWidget {
  final _providerRickandmorty = ProviderRickandmorty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://scontent.fyum1-1.fna.fbcdn.net/v/t1.15752-9/95248775_572620300044708_7211092778216849408_n.png?_nc_cat=110&ccb=1-3&_nc_sid=ae9488&_nc_eui2=AeGzoQNHtyZjxmPeyLG-0KUadNatDHtjVkJ01q0Me2NWQsw2NkkSzuIyqWTLZ27sLZ8VgHVzTUkitO0h08tXHsNQ&_nc_ohc=zZ1pvXyW548AX_WL6V9&_nc_oc=AQmHYE--WLzQYc0jaodJvtbMyv850I-M0S8WASZlYB_7L3PImiMfjCrXWaqoqkpgJQQ&_nc_ht=scontent.fyum1-1.fna&oh=69ad1d5b33d77570abc2baaef0ba8a7d&oe=60F2D626'),
          )
        ],
        title: Text('Personajes de Rick and Morty'),
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder(
        future: _providerRickandmorty.obtenerPersonaje(),
        builder: (BuildContext context,
            AsyncSnapshot<List<PersonajeModel>> snapShot) {
          final listPersonaje = snapShot.data;
          if (snapShot.hasData) {
            return ListView.builder(
                itemCount: listPersonaje!.length,
                itemBuilder: (BuildContext context, int i) {
                  final personaje = listPersonaje[i];
                  return _DisenoPersonaje(personaje);
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class _DisenoPersonaje extends StatelessWidget {
  final PersonajeModel personaje;
  _DisenoPersonaje(this.personaje);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
          Navigator.pushNamed(context, '/detalles', arguments: personaje),
      title: Text(personaje.name!, style: TextStyle(color: Colors.green)),
      subtitle: Text(personaje.gender!),
      leading: Image.network(personaje.image!),
      trailing: Text(personaje.status!, style: TextStyle(color: Colors.blue)),
    );
  }
}
