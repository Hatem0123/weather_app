class Weather_model{

   final String? city_name;
   final String? date;
   final String? image;


   final double? temp;
   final double? max_temp;
   final double? min_temp;



   final String? weather_states;

  Weather_model({this.city_name, this.date, this.image, this.temp, this.max_temp,
      this.min_temp, this.weather_states});



  factory Weather_model.get_json(json)=> Weather_model(city_name:json['location']['name'],
        date:json['current']['last_updated'],
    image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
    temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      min_temp:json['forecast']['forecastday'][0]['day']['mintemp_c'] ,
      max_temp:json['forecast']['forecastday'][0]['day']['maxtemp_c'] ,
      weather_states:json['forecast']['forecastday'][0]['day']['condition']['text']
    );


}