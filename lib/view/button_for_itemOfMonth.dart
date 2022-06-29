import 'package:flutter/material.dart';

class ButtonForMonth extends StatelessWidget {
  final Function getMonthData;

  const ButtonForMonth({Key? key, required this.getMonthData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                const Color(0xff6dd5fa).withOpacity(0.5),
                const Color(0xff00d5fd).withOpacity(0.3),
              ])),
      child: MaterialButton(
        onPressed: () {
          getMonthData();
        },
        shape: const StadiumBorder(),
        minWidth: MediaQuery.of(context).size.width,
        height: 60,
        child: const Text("See this month"),
      ),
    );
  }
}
