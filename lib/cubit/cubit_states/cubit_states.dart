
import 'package:weather_pr1/models/weather_data_model/weather_model.dart';

abstract class Weather_App_state{}
class Weather_init_screen_state  extends Weather_App_state{}
class Weather_screen_succes_state extends Weather_App_state {

  final Weather_model? model;

  Weather_screen_succes_state({this.model});
}
class Weather_screen_error_state extends Weather_App_state{

  final String? err;

  Weather_screen_error_state({this.err});
}