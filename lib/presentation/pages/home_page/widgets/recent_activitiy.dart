import 'package:dap/presentation/widgets/activity_info.dart';
import 'package:dap/presentation/widgets/title_header.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

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
              onPressed: () {},
            ),
          ),
          Column(
            children: List.generate(
              4,
              (index) => Column(
                children: [
                  ActivityInfo(),
                  SizedBox(
                    height: deviceHeight(context) * 0.01,
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: deviceHeight(context) * 0.1,
          //   child: const Center(
          //     child: Text(
          //       "no transactions yet",
          //       style: TextStyle(color: Color(0xFF9F9F9F), fontSize: 18),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
