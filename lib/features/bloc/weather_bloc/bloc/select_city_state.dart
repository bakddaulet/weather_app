part of 'select_city_bloc.dart';

sealed class SelectCityState extends Equatable {
  const SelectCityState();
  
  @override
  List<Object> get props => [];
}

final class SelectCityInitial extends SelectCityState {}
