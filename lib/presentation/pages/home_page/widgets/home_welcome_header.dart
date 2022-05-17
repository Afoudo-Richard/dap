import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class HomeWelcomeHeader extends StatelessWidget {
  const HomeWelcomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                "Good Morning",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.01,
              ),
              const Text(
                "Boss Livinston",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ],
          ),
          Stack(
            children: const [
              Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 30,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
