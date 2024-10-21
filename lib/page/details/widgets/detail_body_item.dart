// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/apps/utils/helper.dart';
import 'package:weather_app/models/forecast.dart';

class DetailBodyItem extends StatelessWidget {
  const DetailBodyItem({
    super.key,
    required this.forecast,
  });

  final Forecast forecast;

  @override
  Widget build(BuildContext context) {
    final DateTime dateTime = DateTime.parse(forecast.dt_txt);
    final dayOfWeek = DateFormat.EEEE().format(dateTime);
    final timeOfDay = DateFormat.Hm().format(dateTime);

    return Row(
      children: [
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  createTemp(forecast.main.temp.round(), size: 24),
                  const SizedBox(
                    width: 11,
                  ),
                  Text(
                    forecast.weather[0].main,
                    style: const TextStyle(
                        fontSize: 22,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                dayOfWeek,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(29, 160, 255, 1),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                timeOfDay,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 4,
          child: Image.asset(
            AssetCustom.getLinkImg(forecast.weather[0].description),
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
