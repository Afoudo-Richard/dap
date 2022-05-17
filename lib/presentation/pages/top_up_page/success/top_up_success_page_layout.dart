import 'package:dap/presentation/widgets/custom_button.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class TopUpSuccessPageLayout extends StatelessWidget {
  const TopUpSuccessPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: deviceHeight(context) * 0.3,
              width: deviceWidth(context) * 0.7,
              child: Image.asset(
                'assets/images/success.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.02,
            ),
            const Text(
              "Success Link Card!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.02,
            ),
            const Text(
              "Your top up was added on DAP. Please wait a moment!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: deviceHeight(context) * 0.04,
            ),
            SizedBox(
              width: deviceHeight(context),
              child: CustomButton(
                backgroundColor: primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  "Back to Home",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            )
          ],
        ),
      ),
    );
  
  }
}
