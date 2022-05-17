import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class WalletButton extends StatelessWidget {
  const WalletButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);


  final IconData icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Icon(
              icon,
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: deviceHeight(context) * 0.007,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
