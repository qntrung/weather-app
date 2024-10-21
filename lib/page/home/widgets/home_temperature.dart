// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:weather_app/apps/utils/helper.dart';

class HomeTemperature extends StatelessWidget {
  const HomeTemperature({
    super.key,
    required this.temp,
  });

  final num temp;

  @override
  Widget build(BuildContext context) {
    return createTemp(temp);
  }
}
