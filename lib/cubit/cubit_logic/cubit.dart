
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_pr1/cubit/cubit_states/cubit_states.dart';
import 'package:weather_pr1/network/dio.dart';

class App_cubit extends Cubit<Weather_App_state>{


  App_cubit() :super(Weather_init_screen_state());




  static App_cubit get(context)=>BlocProvider.of(context);
   late  final cubit_weather_model;

  get_Weather(city_name)async{
    try {
      cubit_weather_model = await   Dio_helper.get_weather_data(city_name.toString());
      emit(Weather_screen_succes_state(model:cubit_weather_model));
      print(cubit_weather_model?.city_name);
    } catch (e) {
      print(e.toString());
      emit(Weather_screen_error_state(err: e.toString()));
    }

}

}