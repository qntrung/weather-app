import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/fluent_location-48-regular.png"),
            const SizedBox(
              width: 11,
            ),
            const Text(
              "HO CHI MINH City",
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          df.format(DateTime.now()),
          style: const TextStyle(
              fontSize: 28,
              fontFamily: "Inter",
              fontWeight: FontWeight.w400,
              color: Colors.white),
        ),
      ],
    );
  }
}
