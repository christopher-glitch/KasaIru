import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  State<StatefulWidget> createState() => HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.2);
}

class HeaderState extends State<Header> {
  final _controller = TextEditingController(text: "大岡山");

  void _submission(text) {
    setState(() {
      _controller.clear();
      if (kDebugMode) {
        print(text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return AppBar(
        elevation: 0.1,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: SizedBox(
          width: double.infinity,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              child: TextField(
                controller: _controller,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  suffixIcon: Icon(
                    Icons.clear, 
                    size: 25,
                  ),
                  contentPadding: EdgeInsets.only(left: 8.0),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  isDense: true,
                ),
                onSubmitted: (text) => _submission(text),
              ),
            ),
          ),
        ));
  }
}
