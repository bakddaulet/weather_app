import 'package:injectable/injectable.dart';
import 'package:weather_app_flutter/data/local/cache_ds.dart';

abstract class WeatherLocalRepository {
  Future<String> getCity();
  Future<void> saveCity(String city);
}

@LazySingleton(as: WeatherLocalRepository)
class WeatherLocalRepositoryImpl implements WeatherLocalRepository {
  final WeatherLocalDs ds;

  WeatherLocalRepositoryImpl({required this.ds});

  @override
  Future<String> getCity() {
    return ds.getCity(); 
  }

  @override
  Future<void> saveCity(String city) {
    return ds.saveCity(city); 
  }
}
