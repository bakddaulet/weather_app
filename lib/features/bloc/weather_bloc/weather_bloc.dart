import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/weather.dart';
import 'package:weather_app_flutter/domain/local_repository.dart';
import 'package:weather_app_flutter/domain/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherLocalRepository weatherLocalRepository;
  final WeatherRemoteRepository weatherRemoteRepository;
  WeatherBloc(this.weatherLocalRepository, this.weatherRemoteRepository) : super(WeatherInitial()) {
    late String selectedCity;
        late Weather _weather;

    on<FetchWeather>((event, emit) async {
      emit(WeatherLoading());
      try {
        selectedCity = await weatherLocalRepository.getCity();
         _weather = await weatherRemoteRepository.getWeather(cityName:selectedCity );
        

        
        print(_weather.toString());
        emit(WeatherSuccess(_weather));
      } catch (e) {
        print(e.toString());
        emit(WeatherFailure());
      }
    });
  }
}
