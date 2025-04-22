import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_pr1/components/components.dart';
import 'package:weather_pr1/cubit/cubit_logic/cubit.dart';
import 'package:weather_pr1/views/home_screen/home_screen.dart';



class SearchScreen extends StatelessWidget {

   SearchScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Search on City Weather "),),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            onChanged: (val){

            },
            onSubmitted: (value) async{
              var cubit =App_cubit.get(context);
              cubit.get_Weather(value);
              Navigationito(context,HomeScreen());

            },
            decoration: InputDecoration(
                hintText: 'Enter City',
                labelText: 'Search',

                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.deepOrange)
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ) ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepOrange),
                  borderRadius: BorderRadius.circular(20),
                )

            ),

          ),
        ),
      ),
      
    );
  }
}

