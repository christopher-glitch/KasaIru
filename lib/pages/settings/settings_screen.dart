import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kasairu/pages/settings/settings_header.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../provider/settings_provider.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends ConsumerState {
  @override
  Widget build(BuildContext context) {
    List<int> settingRainJudge = ref.watch(settingsProvider);

    return Scaffold(
        appBar: const SettingsScreenHeader(),
        body: SafeArea(
            child: Center(
          child: SettingsList(
            sections: [
              SettingsSection(
                title: const Text('傘の決定'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    onPressed: (value) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const ProbabilityDialog();
                          });
                    },
                    leading: const Icon(FontAwesomeIcons.cloudRain),
                    title: const Text('降水確率'),
                    value: Text("${settingRainJudge[0].toString()}%から傘を持つ"),
                  ),
                ],
              ),
              SettingsSection(
                title: const Text('予報範囲'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    onPressed: (value) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const HourDialog();
                          });
                    },
                    leading: const Icon(Icons.access_time),
                    title: const Text('時間'),
                    value: Text("${settingRainJudge[1].toString()}時間先まで予報"),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}

class ProbabilityDialog extends ConsumerStatefulWidget {
  const ProbabilityDialog({super.key});

  @override
  ProbabilityDialogState createState() => ProbabilityDialogState();
}

class ProbabilityDialogState extends ConsumerState {
  final _probability = TextEditingController(text: "");

  // ignore: avoid_init_to_null
  String? errorTextPop;
  bool errorPop = false;

  void validateInputPop() {
    int minValue = 0;
    int maxValue = 100;
    String prob = _probability.text;
    if (prob != "") {
      debugPrint(prob);
      int intValue = int.tryParse(prob)!;
      if (intValue < minValue || intValue > maxValue) {
        setState(() {
          errorPop = true;
          errorTextPop = '0以上100以下の値を入力してください';
        });
      } else {
        setState(() {
          errorPop = false;
          errorTextPop = null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Platform.isIOS)
        ? CupertinoAlertDialog(
            title: const Text('降水確率を設定'),
            content: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoTextField(
                        controller: _probability,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        placeholder: '持っていく確率を入力',
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: errorPop ? Colors.red : Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      if (errorPop)
                        Text(errorTextPop!,
                            style: const TextStyle(color: Colors.red)),
                    ])),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: const Text('close', style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoDialogAction(
                child: const Text('OK'),
                onPressed: () {
                  validateInputPop();
                  if (!errorPop) {
                    String prob = _probability.text;
                    ref
                        .read(settingsProvider.notifier)
                        .setSettingsPop(int.parse(prob));
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          )
        : AlertDialog(
            title: const Text('降水確率を設定'),
            content: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: TextField(
                controller: _probability,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                    hintText: '持っていく確率を入力', errorText: errorTextPop),
              ),
            ),
            actions: [
              TextButton(
                child: const Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    validateInputPop();
                    if (!errorPop) {
                      String prob = _probability.text;
                      ref
                          .read(settingsProvider.notifier)
                          .setSettingsPop(int.parse(prob));
                      Navigator.pop(context);
                    }
                  }),
            ],
          );
  }
}

class HourDialog extends ConsumerStatefulWidget {
  const HourDialog({super.key});

  @override
  HourDialogState createState() => HourDialogState();
}

class HourDialogState extends ConsumerState {
  final _probability = TextEditingController(text: "");

  // ignore: avoid_init_to_null
  String? errorTextHour;
  bool errorHour = false;

  void validateInputHour() {
    int minValue = 0;
    int maxValue = 48;
    String prob = _probability.text;
    if (prob != "") {
      int intValue = int.tryParse(prob)!;
      if (intValue < minValue || intValue > maxValue) {
        setState(() {
          errorHour = true;
          errorTextHour = '48時間以内の値を入力してください';
        });
      } else {
        setState(() {
          errorHour = false;
          errorTextHour = null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Platform.isIOS)
        ? CupertinoAlertDialog(
            title: const Text('予報する時間範囲を設定'),
            content: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CupertinoTextField(
                        controller: _probability,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        placeholder: '〇〇時間を入力',
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: errorHour ? Colors.red : Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      if (errorHour)
                        Text(errorTextHour!,
                            style: const TextStyle(color: Colors.red)),
                    ])),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: const Text('close', style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoDialogAction(
                child: const Text('OK'),
                onPressed: () {
                  validateInputHour();
                  if (!errorHour) {
                    String prob = _probability.text;
                    ref
                        .read(settingsProvider.notifier)
                        .setSettingsHour(int.parse(prob));
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          )
        : AlertDialog(
            title: const Text('予報する時間範囲を設定'),
            content: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: TextField(
                controller: _probability,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                    hintText: '〇〇時間を入力', errorText: errorTextHour),
              ),
            ),
            actions: [
              TextButton(
                child: const Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                  child: const Text("OK"),
                  onPressed: () {
                    validateInputHour();
                    if (!errorHour) {
                      String prob = _probability.text;
                      ref
                          .read(settingsProvider.notifier)
                          .setSettingsHour(int.parse(prob));
                      Navigator.pop(context);
                    }
                  }),
            ],
          );
  }
}
