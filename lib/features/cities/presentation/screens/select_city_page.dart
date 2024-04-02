import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_flutter/core/helpers/colors_helpers.dart';
import 'package:weather_app_flutter/core/helpers/text_style_helper.dart';
import 'package:weather_app_flutter/features/cities/bloc/select_city_bloc/select_city_bloc.dart';
import 'package:weather_app_flutter/features/weather/bloc/weather_bloc/weather_bloc.dart';
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
          child: GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: Container(
              decoration: BoxDecoration(
                color:
                    AppColors.black.withOpacity(0.5), // Полупрозрачный черный цвет
                shape: BoxShape.circle, // Круглая форма контейнера
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.white,
                  size: 24.r,
                ),
              ),
            ),
          ),
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
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12).r,
                        color: Colors.black.withOpacity(0.5)),
                    margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 70)
                        .r,
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return RadioListTile.adaptive(
                              title: Text(
                                state.cities[index],
                                style: ts(CustomTextStyles.s14w500),
                              ),
                              value: state.cities[index],
                              groupValue: state.selectedCity,
                              onChanged: (city) {
                                BlocProvider.of<SelectCityBloc>(context)
                                  .add(SelectCity(city: city!));
                              });
                        },
                        separatorBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16).r,
                            child: const Divider(
                              color: Colors.grey,
                            ),
                          );
                        },
                        itemCount: state.cities.length),
                  ),
                )
              ],
            ));
          } else {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }
}
