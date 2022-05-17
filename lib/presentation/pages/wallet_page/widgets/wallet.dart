import 'package:dap/presentation/widgets/custom_button.dart';
import 'package:dap/presentation/widgets/custom_input.dart';
import 'package:dap/presentation/widgets/title_header.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleHeader(headerTitle: "Swap Currency"),
        Container(
          width: deviceWidth(context),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: primaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Exchange",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.02,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "you send",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          CustomInput(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            inputHintText: '0.00',
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          barrierColor: primaryColor.withOpacity(0.7),
                          isScrollControlled: true,
                          context: context,
                          builder: (ctx) {
                            return Container(
                              height: deviceHeight(context) * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: paddingSize,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("BTC"),
                                    Text("ETH"),
                                    Text("DUSH"),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.blueGrey),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              "BTC",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight(context) * 0.02,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "you send",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          CustomInput(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            inputHintText: '0.00',
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          barrierColor: primaryColor.withOpacity(0.7),
                          isScrollControlled: true,
                          context: context,
                          builder: (ctx) {
                            return Container(
                              height: deviceHeight(context) * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: paddingSize,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("BTC"),
                                    Text("ETH"),
                                    Text("DUSH"),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 5),
                        decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(color: Colors.blueGrey),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Text(
                              "ETH",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    backgroundColor: Colors.green,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.chevron_right_outlined,
                          color: Colors.white,
                        ),
                        const Text(
                          "Swap Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: deviceHeight(context) * 0.02,
        ),
        TitleHeader(
          headerTitle: "Bank & Cards",
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
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
