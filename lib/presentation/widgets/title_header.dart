import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({Key? key, required this.headerTitle, this.trailing})
      : super(key: key);

  final String headerTitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Text(
        headerTitle,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
      ),
      trailing: trailing,
    );
  }
}
