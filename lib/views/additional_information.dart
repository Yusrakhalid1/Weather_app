import 'package:flutter/cupertino.dart';
import 'package:weather_app/utils/colors.dart';

TextStyle titlefont = const TextStyle(fontWeight: FontWeight.w600 , fontSize: 18.0 , color: Mycolors.color2);
TextStyle infofont = const TextStyle(fontWeight: FontWeight.w400 , fontSize: 18.0 , color: Mycolors.color2);

Widget AdditionalInformation(String wind , String pressure , String humidity , String feels_like){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  'Wind',
                  style: titlefont,
                ),
               const SizedBox(height: 18.0,),
                Text(
                  'Pressure',
                  style: titlefont,
                )
              ],
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  '$wind',
                  style: infofont
                ),
               const SizedBox(height: 18.0,),
                Text(
                  '$pressure',
                  style: infofont,
                )
              ],
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  'Humidity',
                  style: titlefont
                ),
               const SizedBox(height: 18.0,),
                Text(
                  'Feels like',
                  style: titlefont,
                )
              ],
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  '$humidity',
                  style: infofont
                ),
               const SizedBox(height: 18.0,),
                Text(
                  '$feels_like',
                  style: infofont,
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}