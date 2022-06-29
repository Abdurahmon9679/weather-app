import 'package:flutter/material.dart';
import 'package:weather_app/view/itemOfMonth.dart';
import 'package:weather_app/view/itemOfWeek.dart';

Widget forBuildItems(List  weather, bool wrap) {
  return ListView.builder(
    shrinkWrap: wrap,
    physics: wrap ? const NeverScrollableScrollPhysics():const ScrollPhysics(),
    itemCount: weather.length,
    scrollDirection: wrap ? Axis.vertical:Axis.horizontal,
    itemBuilder: (context, index) {
      return wrap ? itemOfMonth(weather[index].tempC.toString(),weather[index].tempC.toString()):(itemOfWeek());
    },
  );
}
