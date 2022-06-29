import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/home_controller.dart';
import 'package:weather_app/utilts/glassmorphism.dart';
import 'package:weather_app/view/button_for_itemOfMonth.dart';
import 'package:weather_app/view/forBuildIteams.dart';
import 'package:weather_app/view/today.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (homeController) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff2980b9),
                      Color(0xff6dd5fa),
                      Color(0xffffffff),
                    ]),
              ),
              child: homeController.weather!=null? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///current position
                    GlassMorphism(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                 Text(homeController.weather!.location.name,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                Text(homeController.weather!.location.country,style: TextStyle(color: Colors.grey.shade300),)
                              ],
                            ),
                            const SizedBox(width: 65,),
                            const Icon(Icons.sunny,color: Colors.yellowAccent,size: 45,),
                            const SizedBox(width: 5,),
                             Text(homeController.weather!.forecast.forecastDay.first.day.avgtempC.toString(),style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),

                    ///today
                    parts(homeController.weather?.forecast.forecastDay.first.hour??[],false),

                    ///this week
                    parts(homeController.weather?.forecast.forecastDay.first.hour??[], false),
                    const SizedBox(height: 40,),

                    ///button
                    ButtonForMonth(getMonthData: (_){}),

                    ///monthly
                    SizedBox(
                      child: forBuildItems(homeController.weather!.forecast.forecastDay.first.hour, true),
                    ),
                  ],
                ),
              ):const SizedBox.shrink(),
            ),
          ),
        );
      },
    );
  }
}
