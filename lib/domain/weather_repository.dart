import 'package:injectable/injectable.dart';
import 'package:weather/weather.dart';
import 'package:weather_app_flutter/data/remote/weather_ds.dart';

abstract class WeatherRemoteRepository {
  Future<Weather> getWeather({required String cityName});
}

@LazySingleton(as: WeatherRemoteRepository)
class WeatherRepositoryImpl implements WeatherRemoteRepository {
    final WeatherRemoteDs ds;

  WeatherRepositoryImpl({required this.ds});

  @override
  Future<Weather> getWeather({required String cityName}) {
    return ds.getWeather(cityName: cityName); // Forward the call to the remote data source
  }
}
