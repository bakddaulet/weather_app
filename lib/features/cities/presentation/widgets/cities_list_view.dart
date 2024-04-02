import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app_flutter/features/cities/presentation/widgets/city_item_card.dart';

class CitiesListView extends StatelessWidget {
  const CitiesListView({
    super.key, required this.cities, required this.selectedCity,
  });
final List<String> cities;
  final String selectedCity;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12).r,
            color: Colors.black.withOpacity(0.5)),
        margin:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 70)
                .r,
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return CityItemCard(
                city: cities[index],
                selectedCity: selectedCity,
              );
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
            itemCount: cities.length),
      ),
    );
  }
}