import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/users_images/austin.jpg'),
        ),
        SizedBox(
          height: deviceHeight(context) * 0.03,
        ),
        const Text(
          "Livingston T.",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: deviceHeight(context) * 0.02,
        ),
        const Text(
          "livingstone123@gmail.com",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF727986),
          ),
        ),
        SizedBox(
          height: deviceHeight(context) * 0.01,
        ),
        const Text(
          "+237 672819930",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF727986),
          ),
        ),
      ],
    );
  }
}
