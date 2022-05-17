import 'package:dap/presentation/pages/profile_page/widgets/option_selection.dart';
import 'package:dap/presentation/pages/profile_page/widgets/user_info.dart';
import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class ProfilePageLayout extends StatelessWidget {
  const ProfilePageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: PageTitle(title: "Profile"),
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: paddingSize),
              child: Column(
                
                children: [
                  SizedBox(
                    height: deviceHeight(context) * 0.02,
                  ),
                  const UserInfo(),
                  SizedBox(
                    height: deviceHeight(context) * 0.05,
                  ),
                  const OptionSelection(),
                ],
              ),
            ),
          ),
        ));
  }
}
