import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_pr1/components/components.dart';
import 'package:weather_pr1/cubit/cubit_logic/cubit.dart';
import 'package:weather_pr1/cubit/cubit_states/cubit_states.dart';
import 'package:weather_pr1/views/no_weather_body/no_weather_body.dart';
import 'package:weather_pr1/views/search_secreen/search_screen.dart';
import 'package:weather_pr1/views/weather_info_body/weather_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
   // global.data.
    return

      Scaffold(
      appBar: AppBar(title: Text("Weather App"),
      actions: [
        IconButton(onPressed: (){

          Navigationito(context,SearchScreen());
        }, icon:Icon(Icons.search))
      ],

      ),
      body:BlocBuilder<App_cubit,Weather_App_state>(

          builder: (context,state){

            if(state is Weather_init_screen_state){
              return NoWeatherBody();
            }
            else if(state is Weather_screen_succes_state){

              return WeatherInfoBody();
            }else{
              return Center(child: Text("there was an error "));
            }

          }

      ) ,

    );
  }
}
