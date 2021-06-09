import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:previsao/models/forecast.dart';
import 'package:previsao/screens/home/widgets/week.dart';
import 'package:previsao/shared/find_icon.dart';

class MainScreen extends StatelessWidget {
  final dynamic data;

  MainScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 80,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  this.data["city"],
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  this.data["date"],
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                SizedBox(
                  height: 37,
                ),
                SvgPicture.asset(
                  findIcon(
                    this.data["condition_slug"],
                  ),
                  width: 50,
                ),
                Text(
                  "${this.data["temp"]}°",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  this.data["description"],
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SvgPicture.asset(
                    "assets/images/vento.svg",
                    width: 32,
                  ),
                ),
                Text(
                  this.data["wind_speedy"].toString().toUpperCase(),
                ),
                Week(
                  buildWeek(
                    this.data["forecast"],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Forecast> buildWeek(dynamic data) {
    List<Forecast> listWeek = [];
    for (int index = 0; index < 7; index++) {
      listWeek.add(Forecast(
        dayOfWeek: data[index]["weekday"],
        icon: findIcon(data[index]["condition"]),
        temperature: data[index]["max"],
      ));
    }
    return listWeek;
  }
}
