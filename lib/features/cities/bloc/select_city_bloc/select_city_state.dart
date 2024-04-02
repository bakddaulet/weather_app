part of 'select_city_bloc.dart';

sealed class SelectCityState extends Equatable {
  const SelectCityState();

  @override
  List<Object> get props => [];
}

final class SelectCityInitial extends SelectCityState {}

final class SelectCityLoaded extends SelectCityState {
   final List<String> cities;
   final String selectedCity;

  SelectCityLoaded( {required this.cities, required this.selectedCity,});
}

final class SelectCityLoading extends SelectCityState {}

final class SelectCityError extends SelectCityState {}
