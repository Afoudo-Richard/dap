import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class RecieveInfo extends StatelessWidget {
  const RecieveInfo({Key? key}) : super(key: key);

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
            "Mike",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: deviceHeight(context) * 0.007,
          ),
          const Text(
            "Wednesday, 25 Jan",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF727986),
            ),
          ),
        ],
      ),
      trailing: const Text(
        r"+$27,80",
        style: TextStyle(fontSize: 16, color: Colors.green),
      ),
    );
  }
}
