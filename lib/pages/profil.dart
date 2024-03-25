import 'package:flutter/material.dart';

class Profil extends StatelessWidget{
  const Profil({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFC0F3FF), Colors.yellow])),
    ),
    );
  }
}