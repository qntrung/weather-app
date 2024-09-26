// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomeTemperature extends StatelessWidget {
  const HomeTemperature({
    super.key,
    required this.temp,
  });

  final num temp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          temp.round().toString(),
          style: const TextStyle(
              fontSize: 100,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        const Text(
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
