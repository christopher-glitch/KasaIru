import 'package:flutter/material.dart';

class SettingsScreenHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const SettingsScreenHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.3);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      iconTheme: const IconThemeData(color: Colors.black),
      centerTitle: false,
      title: const Text("Settings",
          style: TextStyle(
              color: Colors.black,
              fontSize: 33,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold)),
    );
  }
}
