import 'package:dap/presentation/pages/wallet_page/widgets/funds.dart';
import 'package:dap/presentation/pages/wallet_page/widgets/wallet.dart';
import 'package:dap/presentation/widgets/custom_button.dart';
import 'package:dap/presentation/widgets/title_header.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class WalletPageLayout extends StatefulWidget {
  const WalletPageLayout({Key? key}) : super(key: key);

  @override
  State<WalletPageLayout> createState() => _WalletPageLayoutState();
}

class _WalletPageLayoutState extends State<WalletPageLayout> {
  var showWallet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingSize),
            child: Column(
              children: [
                SizedBox(
                  height: deviceHeight(context) * 0.02,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xFFEFF0F1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          elevation: 0,
                          padding: EdgeInsets.symmetric(
                              horizontal: 18, vertical: 12),
                          backgroundColor: showWallet
                              ? Colors.white
                              : const Color(0xFFEFF0F1),
                          child: Text(
                            "Wallet",
                            style: TextStyle(color: primaryColor, fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              showWallet = true;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.02,
                      ),
                      Expanded(
                        child: CustomButton(
                          elevation: 0,
                          padding: EdgeInsets.symmetric(
                              horizontal: 18, vertical: 12),
                          backgroundColor: showWallet == false
                              ? Colors.white
                              : const Color(0xFFEFF0F1),
                          child: Text(
                            "Fund",
                            style: TextStyle(color: primaryColor, fontSize: 20),
                          ),
                          onPressed: () {
                            setState(() {
                              showWallet = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: deviceHeight(context) * 0.02,
                ),
                showWallet
                    ? const Wallet(): const Funds(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
