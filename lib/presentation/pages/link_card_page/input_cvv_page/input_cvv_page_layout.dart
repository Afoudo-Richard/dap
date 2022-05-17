import 'package:dap/presentation/widgets/custom_button.dart';
import 'package:dap/presentation/widgets/custom_input.dart';
import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/presentation/widgets/recieve_info.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class InputCvvPageLayout extends StatelessWidget {
  const InputCvvPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var valid = true;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: PageTitle(
          title: "Link a Card",
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Card Number"),
              SizedBox(
                height: deviceHeight(context) * 0.01,
              ),
              const Text(
                "3423 2345 6783 1234",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expired Date",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: deviceHeight(context) * 0.01,
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
                          inputHintText: "MM/YY",
                          inputTextStyle: const TextStyle(
                            color: Color(0xFF848A95),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: deviceHeight(context) * 0.01,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Security Code",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: deviceHeight(context) * 0.01,
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
                          inputHintText: "XXX",
                          inputTextStyle: const TextStyle(
                            color: Color(0xFF848A95),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight(context) * 0.09,
              ),
              SizedBox(
                width: deviceHeight(context),
                child: CustomButton(
                  backgroundColor:
                      valid ? primaryColor : const Color(0xFFE4E5E7),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 16,
                        color: valid ? Colors.white : const Color(0xFFB2B5BC)),
                  ),
                  onPressed: () {
                    valid ? Navigator.pushNamed(context, '/success_link_card') : null;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
