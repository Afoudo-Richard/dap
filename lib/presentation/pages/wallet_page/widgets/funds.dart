import 'package:dap/presentation/widgets/title_header.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class Funds extends StatelessWidget {
  const Funds({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeader(headerTitle: r"Total Virtual Fund: $1800.00 USD"),
        SizedBox(
          height: deviceHeight(context) * 0.02,
        ),
        TitleHeader(
          headerTitle: "Bank Accounts",
          trailing: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/link_card'),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: const Color(0xFFE4E5E7),
                ),
              ),
              child: const Icon(Icons.add, color: Colors.black,),
            ),
          ),
        ),
      ],
    );
  }
}