import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pr1/network/dio.dart';
import 'package:weather_pr1/views/home_screen/home_screen.dart';

import 'cubit/cubit_logic/cubit.dart';

void main()async {
  Dio_helper.init();
  await Dio_helper.get_weather_data('cairo');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>App_cubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const HomeScreen(),
      ),
    );
  }
}

