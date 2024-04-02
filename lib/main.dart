import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_flutter/core/injection/get_it.dart';
import 'package:weather_app_flutter/core/router/app_router.dart';
import 'package:weather_app_flutter/features/bloc/weather_bloc/select_city_bloc/select_city_bloc.dart';
import 'package:weather_app_flutter/features/bloc/weather_bloc/weather_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
 await initLocator();
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  WeatherApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: const Size(360, 800),
      child: MultiBlocProvider(
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
        child: MaterialApp.router(
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          title: 'Weather_app',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
          ),
        ),
      ),
    );
  }
}


