// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/page/details/widgets/detail_body_item.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({
    super.key,
    required this.fcData,
  });

  final List<Forecast> fcData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          Forecast fcItem = fcData[index];
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromRGBO(163, 215, 252, 1),
            ),
            child: DetailBodyItem(
              forecast: fcItem,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: fcData.length);
  }
}
