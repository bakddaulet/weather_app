// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/local/cache_ds.dart' as _i3;
import '../../data/remote/weather_ds.dart' as _i5;
import '../../domain/local_repository.dart' as _i4;
import '../../domain/weather_repository.dart' as _i7;
import '../../features/cities/bloc/select_city_bloc/select_city_bloc.dart'
    as _i8;
import '../../features/weather/bloc/weather_bloc/weather_bloc.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.WeatherLocalDs>(() => _i3.WeatherLocalDsImpl());
    gh.lazySingleton<_i4.WeatherLocalRepository>(
        () => _i4.WeatherLocalRepositoryImpl(ds: gh<_i3.WeatherLocalDs>()));
    gh.lazySingleton<_i5.WeatherRemoteDs>(
        () => _i5.WeaterRemoteDsImpl(dio: gh<_i6.Dio>()));
    gh.lazySingleton<_i7.WeatherRemoteRepository>(
        () => _i7.WeatherRepositoryImpl(ds: gh<_i5.WeatherRemoteDs>()));
    gh.factory<_i8.SelectCityBloc>(
        () => _i8.SelectCityBloc(repo: gh<_i4.WeatherLocalRepository>()));
    gh.factory<_i9.WeatherBloc>(() => _i9.WeatherBloc(
          gh<_i4.WeatherLocalRepository>(),
          gh<_i7.WeatherRemoteRepository>(),
        ));
    return this;
  }
}
