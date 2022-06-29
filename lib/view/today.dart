import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/models/weather_data_model.dart';
import 'package:weather_app/view/forBuildIteams.dart';

Widget parts(List<Hour>weather,bool wrap){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 20,),
       Text(weather.first.time,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
      const SizedBox(height: 20,),
      SizedBox(
         height: 195,
        width: Get.width,
        child: forBuildItems(weather, false),
      ),
    ],
  );

}