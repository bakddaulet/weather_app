import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_flutter/core/helpers/text_style_helper.dart';
import 'package:weather_app_flutter/features/cities/bloc/select_city_bloc/select_city_bloc.dart';

class CityItemCard extends StatelessWidget {
  const CityItemCard({
    super.key,
    required this.city,
    required this.selectedCity,
  });
  final String city;
  final String selectedCity;

  @override
  Widget build(BuildContext context) {
    return RadioListTile.adaptive(
        title: Text(
          city,
          style: ts(CustomTextStyles.s14w500),
        ),
        value: city,
        groupValue: selectedCity,
        onChanged: (city) {
          BlocProvider.of<SelectCityBloc>(context).add(SelectCity(city: city!));
        });
  }
}
