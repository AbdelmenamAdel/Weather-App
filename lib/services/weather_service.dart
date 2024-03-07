import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl='https://api.weatherapi.com/v1';
  final String apiKey='3677bed892474b30b7a122242220806';
  WeatherServices(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
      '$baseUrl/forecast.json?key=$apiKey&q=$cityName',
    );
    try {
      WeatherModel weatherModel=WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
     final String errMessage=e.response?.data['error']['message']??'Oops,there was an error try again later';
     throw Exception(errMessage);
    } catch (e){
      print(e.toString());
      throw Exception('Oops,there was an error try again later');
    }
  }
}
