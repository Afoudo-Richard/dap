import 'package:dap/presentation/widgets/custom_input.dart';
import 'package:dap/presentation/widgets/history_info.dart';
import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/presentation/widgets/title_header.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class HistoryPageLayout extends StatelessWidget {
  const HistoryPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingSize),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: deviceHeight(context) * 0.02,
                    ),
                    PageTitle(
                      title: "History",
                    ),
                    SizedBox(
                      height: deviceHeight(context) * 0.02,
                    ),
                    CustomInput(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      inputBorder: Border.all(
                        width: 2.0,
                        color: const Color(0xFFE4E5E7),
                      ),
                      inputHintText: "Search history",
                      inputTextStyle: const TextStyle(
                        color: Color(0xFF848A95),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleHeader(
                        headerTitle: "This Month",
                      ),
                      Column(
                        children: [
                          HistoryInfo(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
