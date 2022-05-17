import 'package:dap/presentation/pages/home_page/widgets/home_welcome_header.dart';
import 'package:dap/presentation/pages/home_page/widgets/receive_history.dart';
import 'package:dap/presentation/pages/home_page/widgets/recent_activitiy.dart';
import 'package:dap/presentation/pages/home_page/widgets/wallet_info/wallet_info.dart';
import 'package:dap/presentation/widgets/activity_info.dart';
import 'package:dap/presentation/widgets/title_header.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class HomePageLayout extends StatelessWidget {
  const HomePageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSize),
            child: Column(
              children: [
                const HomeWelcomeHeader(),
                SizedBox(
                  height: deviceHeight(context) * 0.02,
                ),
                const WalletInfo(),
                SizedBox(
                  height: deviceHeight(context) * 0.02,
                ),
                const RecentActivity(),
                SizedBox(
                  height: deviceHeight(context) * 0.01,
                ),
                const RecieveHistory(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        child: CircleAvatar(
          radius: deviceWidth(context)*0.06,
          child: const Center(
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
