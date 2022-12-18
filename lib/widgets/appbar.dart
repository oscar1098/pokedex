 import 'package:flutter/material.dart';

PreferredSize AppBarPreferedSize() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100) ,
      child: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        toolbarHeight: 200,
         titleSpacing: 0,
        title: Container(
        color: Colors.grey[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/pokemon-logo.png', height: 250),
            Image.asset('assets/poke-bola.png', height: 100),
          ],
        ),
      ),
      )
      );
}

PreferredSize AppBarPreferedSizeFavoritos() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100) ,
      child: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
        toolbarHeight: 200,
         titleSpacing: 0,
        title: Container(
        color: Colors.grey[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/titulo-sin-fondo.png', height: 70),
            Image.asset('assets/charmander.png', height: 90),
          ],
        ),
      ),
      )
      );
}