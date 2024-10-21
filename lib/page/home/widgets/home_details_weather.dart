// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomeDetailsWeather extends StatelessWidget {
  const HomeDetailsWeather({
    super.key,
    required this.windSpeed,
    required this.humidity,
  });

  final num windSpeed;
  final num humidity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset(
              "assets/images/ph_wind.png",
              width: 49,
              height: 49,
            ),
            Text(
              "${windSpeed.round()}km/h",
              style: const TextStyle(
                  fontSize: 21,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        ),
        Column(
          children: [
            Image.asset(
              "assets/images/humidity.png",
              width: 49,
              height: 49,
            ),
            Text(
              "$humidity%",
              style: const TextStyle(
                  fontSize: 21,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
