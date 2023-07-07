import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:umbrella/models/forecast/forecast_entry.dart';
import 'package:intl/intl.dart';
import 'package:umbrella/process/util/ust_to_jtc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../process/judge/judge_umbrella.dart';

class WeatherUI extends StatelessWidget {
  final List<ForecastEntry> entry;

  const WeatherUI({required this.entry, super.key});

  @override
  Widget build(BuildContext context) {
    var judge = JudgeUmbrella();
    var result = judge.judgeTakeUmbrella(entry);
    Size size = MediaQuery.of(context).size;

    return (Center(
        child: Container(
            color: Colors.white,
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("大岡山",
                  style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 5,
                      fontFamily: 'M_Plus_Rounded',
                      fontWeight: FontWeight.w700)),
              const SizedBox(height: 5),
              result.icon,
              result.message,
              const SizedBox(height: 100),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(0, 255, 255, 255)
                        .withOpacity(0.05),
                    //border: Border.all(color: Colors.blueAccent),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.01,
                            left: size.width * 0.03,
                          ),
                          child: Text(
                            '今日の天気',
                            style: TextStyle(
                              fontFamily: 'M_Plus_Rounded',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(size.width * 0.005),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              buildForecastToday(
                                "Now", //hour
                                30, //temperature
                                20, //wind (km/h)
                                0, //rain chance (%)
                                FontAwesomeIcons.sun, //weather icon
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "15:00",
                                1,
                                10,
                                40,
                                FontAwesomeIcons.cloud,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "16:00",
                                0,
                                25,
                                80,
                                FontAwesomeIcons.cloudRain,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "17:00",
                                -2,
                                28,
                                60,
                                FontAwesomeIcons.snowflake,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "18:00",
                                -5,
                                13,
                                40,
                                FontAwesomeIcons.cloudMoon,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "19:00",
                                -8,
                                9,
                                60,
                                FontAwesomeIcons.snowflake,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "20:00",
                                -13,
                                25,
                                50,
                                FontAwesomeIcons.snowflake,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "21:00",
                                -14,
                                12,
                                40,
                                FontAwesomeIcons.cloudMoon,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "22:00",
                                -15,
                                1,
                                30,
                                FontAwesomeIcons.moon,
                                size,
                                false,
                              ),
                              buildForecastToday(
                                "23:00",
                                -15,
                                15,
                                20,
                                FontAwesomeIcons.moon,
                                size,
                                false,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(ustToJST(entry[0].dt),
                  style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'M_Plus_Rounded',
                      fontWeight: FontWeight.w700)),
            ]))));
  }

  Widget buildForecastToday(String time, int temp, int wind, int rainChance,
      IconData weatherIcon, size, bool isDarkMode) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.025),
      child: Column(
        children: [
          Text(
            time,
            style: GoogleFonts.questrial(
              color: isDarkMode ? Colors.white : Colors.black,
              fontSize: size.height * 0.02,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.005,
                ),
                child: FaIcon(
                  weatherIcon,
                  color: isDarkMode ? Colors.white : Colors.black,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          Text(
            '$temp˚C',
            style: GoogleFonts.questrial(
              color: isDarkMode ? Colors.white : Colors.black,
              fontSize: size.height * 0.025,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01,
                ),
                child: FaIcon(
                  FontAwesomeIcons.wind,
                  color: Colors.grey,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          Text(
            '$wind km/h',
            style: GoogleFonts.questrial(
              color: Colors.grey,
              fontSize: size.height * 0.02,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01,
                ),
                child: FaIcon(
                  FontAwesomeIcons.umbrella,
                  color: Colors.blue,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          Text(
            '$rainChance %',
            style: GoogleFonts.questrial(
              color: Colors.blue,
              fontSize: size.height * 0.02,
            ),
          ),
        ],
      ),
    );
  }
}
