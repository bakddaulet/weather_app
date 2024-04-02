part of 'select_city_bloc.dart';

sealed class SelectCityEvent extends Equatable {
  const SelectCityEvent();

  @override
  List<Object> get props => [];
}

class GetCities extends SelectCityEvent {}

class SelectCity extends SelectCityEvent {
  final String city;

  const SelectCity({required this.city});
}
