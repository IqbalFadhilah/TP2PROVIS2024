import 'package:flutter/material.dart';
import 'package:homepage/widgets/ads.dart';
import 'package:homepage/widgets/iconHome.dart';
import 'package:homepage/widgets/news.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
    body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFC0F3FF), Colors.white]
          ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Ads(),
            const SizedBox(height: 8),
            IconHome(),
            const SizedBox(height: 10),
            News(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}