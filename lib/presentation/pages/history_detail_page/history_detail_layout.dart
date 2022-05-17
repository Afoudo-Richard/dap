import 'package:dap/presentation/pages/history_page/history_page_layout.dart';
import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class HistoryDetailLayout extends StatelessWidget {
  const HistoryDetailLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F3FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: PageTitle(title: "History Detail"),
        elevation: 0,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(             
              width: deviceWidth(context),
              height: deviceHeight(context) * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Sam Mike",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.007,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...List.generate(
                        4,
                        (int) => Row(
                          children: [
                            SizedBox(
                              width: deviceWidth(context) * 0.005,
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF727986),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.02,
                      ),
                      ...List.generate(
                        4,
                        (int) => Row(
                          children: [
                            SizedBox(
                              width: deviceWidth(context) * 0.005,
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF727986),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.02,
                      ),
                      ...List.generate(
                        4,
                        (int) => Row(
                          children: [
                            SizedBox(
                              width: deviceWidth(context) * 0.005,
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF727986),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.02,
                      ),
                      const Text(
                        "3725",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF727986),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.04,
                  ),
                  const Text(
                    "Transfering Success",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.04,
                  ),
                  const Text(
                    "From",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.007,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...List.generate(
                        4,
                        (int) => Row(
                          children: [
                            SizedBox(
                              width: deviceWidth(context) * 0.005,
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF727986),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.02,
                      ),
                      ...List.generate(
                        4,
                        (int) => Row(
                          children: [
                            SizedBox(
                              width: deviceWidth(context) * 0.005,
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF727986),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.02,
                      ),
                      ...List.generate(
                        4,
                        (int) => Row(
                          children: [
                            SizedBox(
                              width: deviceWidth(context) * 0.005,
                            ),
                            CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFF727986),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth(context) * 0.02,
                      ),
                      const Text(
                        "3725",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF727986),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.04,
                  ),
                  const Text(
                    "Amount",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    height: deviceHeight(context) * 0.007,
                  ),
                  const Text(
                    r"$84,00",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
            ),
            // Positioned(
            //   child: CircleAvatar(
            //     backgroundColor: Colors.green,
            //     radius: deviceWidth(context) * 0.09,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
