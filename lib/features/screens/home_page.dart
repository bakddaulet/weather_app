import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_flutter/core/helpers/text_style_helper.dart';
import 'package:weather_app_flutter/core/router/app_router.dart';
import 'package:weather_app_flutter/features/bloc/weather_bloc/weather_bloc.dart';
import 'package:weather_app_flutter/features/widgets/bg_light.dart';
import 'package:weather_app_flutter/features/widgets/main_info.dart';
import 'package:weather_app_flutter/features/widgets/temp_info_card.dart';
import 'package:weather_app_flutter/features/widgets/time_info_item.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget getWeatherIcon(int code) {
    switch (code) {
      case >= 200 && < 300:
        return Image.asset('assets/1.png');
      case >= 300 && < 400:
        return Image.asset('assets/images/2.png');
      case >= 500 && < 600:
        return Image.asset('assets/images/3.png');
      case >= 600 && < 700:
        return Image.asset('assets/images/4.png');
      case >= 700 && < 800:
        return Image.asset('assets/images/5.png');
      case == 800:
        return Image.asset('assets/images/6.png');
      case > 800 && <= 804:
        return Image.asset('assets/images/7.png');
      default:
        return Image.asset('assets/images/7.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20).r,
        child: SizedBox(
            height: 1.sh,
            child: BgLight(child: BlocBuilder<WeatherBloc, WeatherState>(
              builder: (context1, state) {
                if (state is WeatherSuccess) {
                  return SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: RefreshIndicator.adaptive(
                      color: Colors.white,
                      onRefresh: () async {
                        BlocProvider.of<WeatherBloc>(context)
                            .add(FetchWeather());
                      },
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(bottom: 200.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8.r),
                            InkWell(
                                onTap: () {
                                  print('salam');
                                },
                                child: getWeatherIcon(
                                    state.weather.weatherConditionCode!)),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  context1.router.push(const SelectCityRoute());
                                },
                                child: Text(
                                  '📍 ${state.weather.areaName}',
                                  style: ts(CustomTextStyles.s14w500),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            MainInfo(
                              temperature: state.weather.temperature?.celsius,
                              weather: state.weather.weatherMain,
                              date: state.weather.date,
                            ),
                            SizedBox(height: 30.r),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TimeInfoCard(
                                    iconAsset: 'assets/images/11.png',
                                    title: 'Sunrise',
                                    time: state.weather.sunrise!),
                                TimeInfoCard(
                                    iconAsset: 'assets/images/12.png',
                                    title: 'Sunset',
                                    time: state.weather.sunset!),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0).r,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TempInfoCard(
                                    iconAsset: 'assets/images/13.png',
                                    title: 'Temp Max',
                                    temp: state.weather.tempMax?.celsius),
                                TempInfoCard(
                                    iconAsset: 'assets/images/14.png',
                                    title: 'Temp Min',
                                    temp: state.weather.tempMin!.celsius),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
              },
            ))),
      ),
    );
  }
}
