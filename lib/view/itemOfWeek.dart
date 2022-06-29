import 'package:flutter/material.dart';
import 'package:weather_app/utilts/glassmorphism.dart';

Widget itemOfWeek(){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    child: GlassMorphism(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 60,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text("45"),
            Icon(Icons.cloudy_snowing),
            Text("Mon"),
          ],
        ),
      ),
    ),
  );
}