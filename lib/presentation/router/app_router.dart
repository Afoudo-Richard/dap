import 'package:dap/presentation/pages/link_card_page/input_card_number/input_card_number_page.dart';
import 'package:dap/presentation/pages/link_card_page/input_cvv_page/input_cvv_page.dart';
import 'package:dap/presentation/pages/link_card_page/success_page/success_page.dart';
import 'package:dap/presentation/pages/recieve_history_page/recieve_history.dart';
import 'package:dap/presentation/pages/top_up_page/confirmation/top_up_confirmation_page.dart';
import 'package:dap/presentation/pages/top_up_page/input_amount/input_top_up_amount_page.dart';
import 'package:dap/presentation/pages/top_up_page/select_method/select_top_up_method_page.dart';
import 'package:dap/presentation/pages/top_up_page/success/top_up_success_page.dart';
import 'package:dap/presentation/screen/main_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
      case '/recieve_history':
        return MaterialPageRoute(
          builder: (_) => const RecieveHistory(),
        );
      case '/link_card':
        return MaterialPageRoute(
          builder: (_) => const InputCardNumberPage(),
        );
      case '/input_cvv':
        return MaterialPageRoute(
          builder: (_) => const InputCvvPage(),
        );
      case '/success_link_card':
        return MaterialPageRoute(
          builder: (_) => const SuccessPage(),
        );
      case '/top_up':
        return MaterialPageRoute(
          builder: (_) => const TopUpPage(),
        );
      case '/top_up_input_amount':
        return MaterialPageRoute(
          builder: (_) => const InputTopUpAmountPage(),
        );
      case '/top_up_confirmation':
        return MaterialPageRoute(
          builder: (_) => const TopUpConfirmationPage(),
        );
      case '/top_up_success':
        return MaterialPageRoute(
          builder: (_) => const TopUpSuccessPage(),
        );
      default:
        return null;
    }
  }

  void dispose() {
    // to close the bloc or cubit
  }
}
