import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class WeatherLocalDs {
  Future<String> getCity();
  Future<void> saveCity(String city);
}

@LazySingleton(as: WeatherLocalDs)
class WeatherLocalDsImpl extends WeatherLocalDs {
  static const _keyCity = 'city';

  @override
  Future<String> getCity() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyCity) ?? 'Almaty'; 
  }

  @override
  Future<void> saveCity(String city) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyCity, city);
  }
}
