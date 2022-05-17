import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/presentation/widgets/recieve_info.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class RecieveHistoryLayout extends StatelessWidget {
  const RecieveHistoryLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: PageTitle(title: "Recieve History"),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: ListView.separated(
        padding:
            const EdgeInsets.symmetric(horizontal: paddingSize, vertical: 10),
        itemBuilder: (BuildContext context, int i) {
          return RecieveInfo();
        },
        itemCount: 5,
        separatorBuilder: (context, index) => SizedBox(
          height: 5,
        ),
      ),
    );
  }
}
