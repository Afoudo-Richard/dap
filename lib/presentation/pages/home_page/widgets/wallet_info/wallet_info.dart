import 'package:dap/presentation/pages/home_page/widgets/wallet_info/widgets/wallet_button.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class WalletInfo extends StatelessWidget {
  const WalletInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  r"$40,00",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: deviceHeight(context) * 0.01,
                ),
                const Text(
                  "Wallet Amt",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: deviceWidth(context) * 0.05,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                WalletButton(
                  text: "Send",
                  icon: Icons.add,
                ),
                WalletButton(
                  text: "Top Up",
                  icon: Icons.add,
                  onTap: (){
                    Navigator.pushNamed(context, '/top_up');
                  },
                ),
                WalletButton(
                  text: "Withdraw",
                  icon: Icons.money_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
