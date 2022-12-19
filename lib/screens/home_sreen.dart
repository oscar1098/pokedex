import 'package:flutter/material.dart';
import 'package:pokedex_prueba_tecnica/widgets/appbar.dart';
import 'package:provider/provider.dart';
import '../provider/pokemon_provider.dart';
import '../widgets/ir_a_favoritos_boton.dart';

class HomeScreen extends StatelessWidget {

  
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    

    final provider = Provider.of<PokemonProvider>(context);

    return Scaffold(

      appBar: AppBarPreferedSize(),

      body: ListView.builder(
        itemCount: provider.nombrePokemon.length,
        itemBuilder: (BuildContext context, int index) {


          int numero = index +1;
          if(numero >= 906){ numero = 0;}
      
          return Center(
            child: Container(
              child: Column(
                children: [
                   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(width: 30),
                   Text(provider.nombrePokemon[index].name),
                   IconButton(onPressed: () {
                  print('añadir a favoritos');
            },
                  color: Colors.yellow,
                  icon: Icon(Icons.star), 
            )
          ]
          ),
                   Center(
                     child: Container(
                         width: 160, 
                         height: 160, 
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.deepPurpleAccent,
                        ),
                         child: 
                Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${numero}.png",scale: 0.5,),


            )
          )


                ],
              ),
            ),
          );
        },
      ),
  
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: IraFavoritosBoton()
    );
  }
}