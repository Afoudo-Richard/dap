import 'package:dap/presentation/widgets/custom_button.dart';
import 'package:dap/presentation/widgets/custom_input.dart';
import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class TopUpConfirmationPageLayout extends StatelessWidget {
  const TopUpConfirmationPageLayout({Key? key}) : super(key: key);

  get valid => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF0F1),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: PageTitle(
          title: "Confirmation",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Top up with",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.02,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            radius: deviceWidth(context) * 0.06,
                            backgroundImage: const AssetImage(
                                'assets/images/users_images/austin.jpg'),
                          ),
                          title: const Text(
                            "Master Card (3302)",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: deviceHeight(context) * 0.04,
              ),
              const Text(
                "Your CVV",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                inputHintText: "CVV",
                inputTextStyle: const TextStyle(
                  color: Color(0xFF727986),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.02,
              ),
              // Top up Amount
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Top up Amount",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              r"$7,00",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color(0xFFE4E5E7),
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Top Up to DAP",
                              style: TextStyle(
                                color: Color(0xFF727986),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: deviceHeight(context) * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Top up Detail",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.02,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Top up amount",
                              style: TextStyle(
                                color: Color(0xFF727986),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              r"$7,00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: deviceHeight(context) * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Top up amount",
                              style: TextStyle(
                                color: Color(0xFF727986),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              r"$7,00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Color(0xFFE4E5E7),
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                color: Color(0xFF727986),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              r"$7,99",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: deviceHeight(context) * 0.04,
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
                    valid
                        ? Navigator.pushNamed(context, '/top_up_success')
                        : null;
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
