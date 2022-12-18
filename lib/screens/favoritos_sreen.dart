import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class FavoritosScreen extends StatelessWidget {
   
  const FavoritosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarPreferedSizeFavoritos(),
      
      body: Center(
         child: Text('Pantalla favoritos'),
      ),
    );
  }
}