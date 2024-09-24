import 'package:flutter/material.dart';

class HomeTemperature extends StatelessWidget {
  const HomeTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "45",
          style: TextStyle(
              fontSize: 100,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        Text(
          "o",
          style: TextStyle(
              fontSize: 36,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
      ],
    );
  }
}
