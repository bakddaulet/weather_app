import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/weather.dart';

abstract class WeatherRemoteDs {
  Future<Weather> getWeather({required String cityName});
}

@LazySingleton(as: WeatherRemoteDs)
class WeaterRemoteDsImpl extends WeatherRemoteDs {
    final Dio _dio;

  WeaterRemoteDsImpl({required Dio dio}) : _dio = dio;

  @override
  Future<Weather> getWeather({required String cityName}) async {
    try {
      final response = await _dio.get(
        'https://api.openweathermap.org/data/2.5/weather',
        queryParameters: {
          'q': cityName,
          'appid': '4d6fdb52fd8cbfd32ae78d67bc87bab5',
        },
      );
      return Weather(response.data);
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
