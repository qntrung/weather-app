import 'package:flutter/material.dart';

class HomeDetailsWeather extends StatelessWidget {
  const HomeDetailsWeather({super.key});

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
            const Text(
              "5km/h",
              style: TextStyle(
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
            const Text(
              "30%",
              style: TextStyle(
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
