import 'package:flutter/material.dart';
import 'package:magic_app/screens/Home.dart';



void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomeScreen(),
      // '/SegundaTela': (context) => History(),
    },
  ),
  );
}