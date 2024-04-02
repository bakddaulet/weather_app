import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<FetchWeather>((event, emit) async {
      print('salam');
      emit(WeatherLoading());
      try {
        WeatherFactory wf = WeatherFactory('4d6fdb52fd8cbfd32ae78d67bc87bab5',
            language: Language.RUSSIAN);

        Weather weather = await wf.currentWeatherByCityName("Almaty"
            // event.position.latitude,
            // event.position.longitude,
            );
        print(weather.toString());
        emit(WeatherSuccess(weather));
      } catch (e) {
        print(e.toString());
        emit(WeatherFailure());
      }
    });
  }
}
