import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/mapa_nombre.dart';

class PokemonProvider extends ChangeNotifier{

  List<Result> nombrePokemon = [];

  PokemonProvider(){
    print("pokemon inicializado");

    httpPokemon();

  }

  httpPokemon() async {
    var url = Uri.parse('https://pokeapi.co/api/v2/pokemon?offset=0&limit=1154');
    final response = await http.get(url);

    final mapaNombre= MapaNombre.fromJson(response.body);

    nombrePokemon = mapaNombre.results;

    notifyListeners();

  }



}