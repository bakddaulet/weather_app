import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_flutter/core/helpers/colors_helpers.dart';
import 'package:weather_app_flutter/features/cities/bloc/select_city_bloc/select_city_bloc.dart';
import 'package:weather_app_flutter/features/cities/presentation/widgets/cities_list_view.dart';
import 'package:weather_app_flutter/features/weather/bloc/weather_bloc/weather_bloc.dart';
import 'package:weather_app_flutter/features/widgets/app_loading_widget.dart';
import 'package:weather_app_flutter/features/widgets/bg_light.dart';

@RoutePage()
class SelectCityScreen extends StatefulWidget {
  const SelectCityScreen({super.key});

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  @override
  void initState() {
    BlocProvider.of<SelectCityBloc>(context).add(GetCities());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16).r,
          child: backButton(context),
        ),
      ),
      backgroundColor: AppColors.black,
      body: BlocConsumer<SelectCityBloc, SelectCityState>(
        listener: (context, state) {
          if (state is SelectCityLoaded) {
            BlocProvider.of<WeatherBloc>(context).add(const FetchWeather());
          }
        },
        builder: (context, state) {
          if (state is SelectCityLoaded) {
            return BgLight(
                child: Column(
              children: [
                CitiesListView(
                  cities: state.cities,
                  selectedCity: state.selectedCity,
                )
              ],
            ));
          } else {
            return const AppLoadingWidget();
          }
        },
      ),
    );
  }

  GestureDetector backButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.pop();
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.black.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: AppColors.white,
            size: 24.r,
          ),
        ),
      ),
    );
  }
}
