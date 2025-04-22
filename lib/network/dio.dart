import 'package:dio/dio.dart';
import 'package:weather_pr1/models/weather_data_model/weather_model.dart';


class Dio_helper{



  static Dio? dio ;




  static init(){
    dio = Dio(
        BaseOptions(
          receiveDataWhenStatusError: true,
          baseUrl: 'https://api.weatherapi.com/v1/',

        )

    );


  }





static Future<Weather_model?> get_weather_data(String? city_name) async{
    try {
      var response = await dio?.get(
          'forecast.json?key=8adf6cb6328a4c10859143732250703&q=$city_name');
      var data = await Weather_model.get_json(response?.data);
      return await data;
    }
    on DioException
    catch(e){
        final String err = e.response?.data['error']['message'] ?? 'oops there is an error ';
        throw Exception(err.toString());
    }
    catch(e){
      throw Exception(e.toString());
    }

}


}