import 'package:flutter/material.dart';
import 'package:weather_app/controller/weather_api_controller.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/views/additional_information.dart';
import 'package:weather_app/views/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherAPI_controller api_controller = WeatherAPI_controller();
  Weather? data; 

// change country
  Future<void> getdata()async{
   data = await api_controller.current_weather('karachi');
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        elevation: 1.0,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Mycolors.color2),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
           icon: const Icon(Icons.menu),
            color: Mycolors.color2,
          ),
      ),
      body: FutureBuilder(
        future: getdata(),      
        builder:(context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded, "${data!.temp}", "${data!.cityname}"),
          const SizedBox(height: 60.0,),
         const Text(
            'Additional Information',
            style: TextStyle(
              fontSize: 24.0,
              color: Mycolors.color2,
              fontWeight: FontWeight.bold
            ),
          ),
          const Divider(),
          const SizedBox(height: 20.0,),
          AdditionalInformation("${data!.wind}", "${data!.humidity}", "${data!.pressure}", "${data!.feels_like}"),
        ],
      );
          }else if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          
          return Container();
        }
      ),
    );
  }
}