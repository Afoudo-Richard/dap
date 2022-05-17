import 'package:dap/presentation/widgets/activity_info.dart';
import 'package:dap/presentation/widgets/recieve_info.dart';
import 'package:dap/presentation/widgets/title_header.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class RecieveHistory extends StatelessWidget {
  const RecieveHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TitleHeader(
            headerTitle: "Recent Activity",
            trailing: TextButton(
              child: const Text(
                "view all",
                style: TextStyle(color: primaryColor, fontSize: 16),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/recieve_history');
              },
            ),
          ),
          Column(
            children: List.generate(
              4,
              (index) => Column(
                children: [
                  RecieveInfo(),
                  SizedBox(
                    height: deviceHeight(context) * 0.01,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
