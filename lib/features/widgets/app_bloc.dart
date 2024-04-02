import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_flutter/core/injection/get_it.dart';
import 'package:weather_app_flutter/features/cities/bloc/select_city_bloc/select_city_bloc.dart';
import 'package:weather_app_flutter/features/weather/bloc/weather_bloc/weather_bloc.dart';

class GlobalBloc extends StatelessWidget {
  const GlobalBloc({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherBloc>(
            create: (BuildContext context) =>
                getIt<WeatherBloc>()..add(const FetchWeather()),
                
          ),
          BlocProvider<SelectCityBloc>(
            create: (BuildContext context) =>
                getIt<SelectCityBloc>()..add( GetCities()),
                
          ),
      ],
      child: child,
    );
  }
}
