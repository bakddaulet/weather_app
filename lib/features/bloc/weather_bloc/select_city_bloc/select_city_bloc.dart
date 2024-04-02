import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_flutter/domain/local_repository.dart';

part 'select_city_event.dart';
part 'select_city_state.dart';

@injectable
class SelectCityBloc extends Bloc<SelectCityEvent, SelectCityState> {
  final WeatherLocalRepository repo;
  SelectCityBloc({required this.repo}) : super(SelectCityInitial()) {
    late List<String> citiList;
    late String _selectedCity;

    on<GetCities>((event, emit) async {
      emit(SelectCityLoading());
      final selectedCity = await repo.getCity();
      _selectedCity = selectedCity;
      final List<String> cities = [
        'Almaty',
        'Astana',
        'Shymkent',
        'Semey',
        'Aktau'
      ];
      citiList = List<String>.from(cities);

      emit(SelectCityLoaded(selectedCity: _selectedCity, cities: citiList));
    });
    on<SelectCity>((event, emit) async {
      emit(SelectCityLoading());
      await repo.saveCity(event.city);
      add(GetCities());
    });
  }
}
