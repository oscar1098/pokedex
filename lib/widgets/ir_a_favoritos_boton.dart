

import 'package:flutter/material.dart';

import '../screens/favoritos_sreen.dart';

class IraFavoritosBoton extends StatelessWidget {
  const IraFavoritosBoton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50, 
      child: FloatingActionButton(
        child: Icon(Icons.star,size: 50,),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritosScreen()));
        },
      ),
    );
  }
}