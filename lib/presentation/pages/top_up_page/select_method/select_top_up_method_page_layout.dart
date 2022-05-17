import 'package:dap/presentation/widgets/page_title.dart';
import 'package:dap/utils/style.dart';
import 'package:flutter/material.dart';

class TopUpPageLayout extends StatelessWidget {
  const TopUpPageLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF0F1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: PageTitle(title: "Top Up"),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
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
                "What method do you want to top up?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.04,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Debit or Credit Cards",
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
                          TopUpMethodInfo(onTap: (){
                            Navigator.pushNamed(context, '/top_up_input_amount');
                          },),
                          Divider(
                            color: Color(0xFFE4E5E7),
                          ),
                          TopUpMethodInfo(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: deviceHeight(context) * 0.04,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Bank",
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
                          TopUpMethodInfo(),
                          Divider(
                            color: Color(0xFFE4E5E7),
                          ),
                          TopUpMethodInfo(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopUpMethodInfo extends StatelessWidget {
  const TopUpMethodInfo({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: deviceWidth(context) * 0.06,
        backgroundImage:
            const AssetImage('assets/images/users_images/austin.jpg'),
      ),
      title: const Text(
        "Master Card (3302)",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(
        Icons.chevron_right_sharp,
        size: 30,
      ),
    );
  }
}
