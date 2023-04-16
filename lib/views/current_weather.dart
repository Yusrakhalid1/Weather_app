import 'package:flutter/cupertino.dart';
import 'package:weather_app/utils/colors.dart';

Widget currentWeather(IconData icon , String temp , String location){
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Icon(
          icon,
          size: 64.0,
          color: Mycolors.color16,
          ),
         const SizedBox(height: 10.0,),
          Text(
            '$temp',
            style: const TextStyle(
              fontSize: 46.0
            ),
          ),
           SizedBox(height: 10.0,),
          Text(
            '$location',
            style: const TextStyle(
              fontSize: 18.0,
              color: Mycolors.color2
            ),
          )
      ],
    ),
  );
}