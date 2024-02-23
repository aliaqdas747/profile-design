 import 'package:flutter/material.dart';

class TTextTheme{
  TTextTheme._();
static TextTheme textTheme = TextTheme(
  //For Big headline text
  headlineLarge: const TextStyle().copyWith(fontSize: 45.0,fontWeight: FontWeight.bold,decoration: TextDecoration.none,),
  headlineMedium: const TextStyle().copyWith(fontSize: 60.0,color: Colors.blue,),
  headlineSmall: const TextStyle().copyWith(fontSize: 35,color: Colors.white,),

  //For Title
  titleLarge: const TextStyle().copyWith(fontSize: 30,color: Colors.white),
  titleMedium: const TextStyle().copyWith(fontSize: 25,fontWeight: FontWeight.bold),
  titleSmall: const TextStyle().copyWith(fontSize: 20,fontWeight: FontWeight.bold),

  //For Small Discriptions
    bodyLarge:const TextStyle().copyWith(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
    bodyMedium: const TextStyle().copyWith(fontSize: 18,color: Colors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 14,color: Colors.pinkAccent)
 );

 }