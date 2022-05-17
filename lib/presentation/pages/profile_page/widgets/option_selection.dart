import 'package:flutter/material.dart';

class OptionSelection extends StatelessWidget {
  const OptionSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Option_selection_item(
          title: 'My Address',
          onTap: () {},
        ),
        Option_selection_item(
          title: 'My Cards',
          onTap: () {},
        ),
        Option_selection_item(
          title: 'Pay & Send',
          onTap: () {},
        ),
        Option_selection_item(
          title: 'My Investments',
          onTap: () {},
        ),
        Option_selection_item(
          title: 'Crypto Funds',
          onTap: () {},
        ),
        Option_selection_item(
          title: 'Logout',
          onTap: () {},
        ),
      ],
    );
  }
}

class Option_selection_item extends StatelessWidget {
  const Option_selection_item({
    Key? key,
    this.onTap,
    required this.title,
  }) : super(key: key);

  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
