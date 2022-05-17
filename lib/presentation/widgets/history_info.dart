import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class HistoryInfo extends StatelessWidget {
  const HistoryInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: deviceWidth(context) * 0.06,
        backgroundImage: const AssetImage('assets/images/users_images/austin.jpg'),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "PayPal",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: deviceHeight(context) * 0.007,
          ),
          const Text(
            "25 Jan 2022",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF727986),
            ),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            r"$8,00",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: deviceHeight(context) * 0.001,
          ),
          const Text(
            "refund",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
