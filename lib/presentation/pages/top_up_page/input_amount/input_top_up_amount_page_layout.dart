import 'package:dap/presentation/widgets/custom_button.dart';
import 'package:dap/presentation/widgets/custom_input.dart';
import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class InputTopUpAmountPageLayout extends StatelessWidget {
  const InputTopUpAmountPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var valid = true;
    return Scaffold(
      backgroundColor: const Color(0xFFEFF0F1),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: PageTitle(
          title: "Top UP",
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: deviceHeight(context) * 0.02,
              ),
              const Text(
                "Type an amount",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.01,
              ),
              CustomInput(
                backgroundColor: Colors.transparent,
                leading: const Text(
                  r"$",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                inputHintText: "0.00",
                inputTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.04,
              ),
              const Text(
                "Message (optional)",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.01,
              ),
              CustomInput(
                
                borderRadius: const BorderRadius.all(
                  Radius.circular(0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                inputHintText: "Type message",
                inputTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.4,
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
                    valid ? Navigator.pushNamed(context, '/top_up_confirmation') : null;
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
