
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_pr1/cubit/cubit_logic/cubit.dart';

class WeatherInfoBody extends StatelessWidget {

  //final Weather_model? weather_model;
  const WeatherInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit =App_cubit.get(context).cubit_weather_model;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            '${cubit?.city_name}',
            style: GoogleFonts.anton(fontSize: 32,fontWeight: FontWeight.bold,letterSpacing: 4),
          ),
           Text(
            'updated at ${formatdata(cubit.date).hour } : ${formatdata(cubit.date).minute}',
            style: TextStyle(
              fontSize: 24,


            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https:${cubit.image}',
              ),
               Text(
                '${cubit.temp}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
               Column(
                children: [
                  Text(
                    'Max temp :${cubit.max_temp.toString()}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Min temp :${cubit.min_temp.toString()}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
           Text(
            '${cubit.weather_states.toString()}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}


DateTime formatdata(value){

  return DateTime.parse(value);
}