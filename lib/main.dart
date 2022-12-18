import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_prueba_tecnica/provider/pokemon_provider.dart';
import 'package:pokedex_prueba_tecnica/screens/favoritos_sreen.dart';
import 'package:pokedex_prueba_tecnica/screens/home_sreen.dart';
import 'package:provider/provider.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarBrightness: Brightness.light    
  ));

  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => PokemonProvider(), lazy: false,)
    ],
    child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home':(context) => const HomeScreen(),
        'favoritos':(context) => const FavoritosScreen()
      }
    );
  }
}