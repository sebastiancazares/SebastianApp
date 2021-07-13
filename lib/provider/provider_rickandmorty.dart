import 'package:dio/dio.dart';
import 'package:sebastianapp/models/personaje_model.dart';

class ProviderRickandmorty {
  final _url = 'https://rickandmortyapi.com/api/character';
  final _http = Dio();

  Future<List<PersonajeModel>> obtenerPersonaje() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data['results'];
    final listaPersonajes =
        data.map((personaje) => PersonajeModel.fromMapJson(personaje)).toList();
    return listaPersonajes;
  }
}
