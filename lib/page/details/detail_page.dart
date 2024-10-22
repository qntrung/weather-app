import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/forecast.dart';
import 'package:weather_app/page/details/widgets/detail_body.dart';
import 'package:weather_app/providers/weather_provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getForecast();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF1D6CF3),
            Color(0xFF19D2FE),
          ],
        ),
      ),
      child: FutureBuilder(
        future: context.read<WeatherProvider>().getForecast(),
        initialData: const [],
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData) {
            return Container(
              child: const Text("No data"),
            );
          }
          List<Forecast> fcData = snapshot.data as List<Forecast>;
          String cityName = context.read<WeatherProvider>().cityName;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              centerTitle: false,
              leading: const Icon(CupertinoIcons.location),
              title: Row(
                children: [
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('$cityName City',
                          speed: const Duration(milliseconds: 100)),
                    ],
                    repeatForever: true,
                  ),
                ],
              ),
              actions: const [
                Icon(CupertinoIcons.search),
                SizedBox(
                  width: 18,
                )
              ],
            ),
            body: DetailBody(
              fcData: fcData,
            ),
          );
        },
      ),
    );
  }
}
