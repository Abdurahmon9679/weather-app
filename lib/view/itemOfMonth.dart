import 'package:flutter/material.dart';
import 'package:weather_app/utilts/glassmorphism.dart';

Widget itemOfMonth(String title, String subtitle){
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    width: double.infinity,
    height: 60,
    child: GlassMorphism(
      child:  ListTile(
        minVerticalPadding: 10,
        title: Text(title),
        subtitle:  Text(subtitle),
        trailing: const Icon(Icons.cloud),
      ),
    ),
  );
}