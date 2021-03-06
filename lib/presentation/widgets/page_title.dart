import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
   PageTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: Colors.black,
      ),
    );
  }
}
