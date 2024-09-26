// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({
    super.key,
    required this.location,
  });

  final String location;

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
            Text(
              location,
              style: const TextStyle(
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
