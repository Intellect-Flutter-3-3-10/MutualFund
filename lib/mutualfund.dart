library mutual_fund.dart;

/// screens export
export 'screens/discover_screen/discover_screen.dart';
export 'screens/discover_screen/view_all_screen/best_performing_screen.dart';
export 'screens/discover_screen/view_all_screen/fund_by_us_screen.dart';
export 'screens/discover_screen/view_all_screen/latest_fund_screen.dart';
export 'screens/discover_screen/view_all_screen/quick_action_screen/quick_action_screen.dart';
export 'screens/discover_screen/view_all_screen/quick_action_screen/tab_screens/debt_screen.dart';
export 'screens/discover_screen/view_all_screen/quick_action_screen/tab_screens/hybrid_screen.dart';
export 'screens/discover_screen/view_all_screen/quick_action_screen/tab_screens/tab_screens.dart';
export 'screens/my_portfolio_screen/investment_screen.dart';
export 'screens/my_portfolio_screen/my_portfolio_screen.dart';
export 'screens/my_portfolio_screen/sip_screen.dart';
export 'screens/order_screen/active_fund_screen.dart';
export 'screens/order_screen/closed_fund_screen.dart';
export 'screens/watch_list_screen/watchlist_screen.dart';
export 'screens/dashboard_screen.dart';
export 'screens/fund_detail_screen.dart';
export 'screens/order_placement_screen.dart';

/// common widgets exports
export 'widgets/charts/simple_line_chart.dart';
export 'widgets/common/common_app_bar.dart';
export 'widgets/common/common_header.dart';
export 'widgets/common/common_icon_button.dart';
export 'widgets/common/common_outlined_button.dart';
export 'widgets/common/common_outlined_container.dart';

/// custom made widgets exports
export 'widgets/custom_check_box_tile.dart';
export 'widgets/custom_chip.dart';
export 'widgets/custom_date_chip.dart';
export 'widgets/custom_expansion_panel.dart';
export 'widgets/custom_price_chip.dart';
export 'widgets/custom_radio_tile.dart';
export 'widgets/custom_textfield.dart';
export 'widgets/custom_toggle_button.dart';
export 'widgets/my_portfolio_list_card.dart';
export 'widgets/quick_action_card.dart';
export 'widgets/show_rating_widget.dart';
export 'widgets/title_and_value_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mutualfund/theme/theme.dart';
import 'mutualfund.dart';
import 'routes/routes.dart';

//
// void main() {
//   runApp(const MutualFund());
// }

class MutualFundModule extends StatelessWidget {
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final ThemeMode? themeMode;
  final String? basUrl;

  const MutualFundModule({
    super.key,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.basUrl = 'www.google.com',
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mutual Funds App sdfsd',
      getPages: AppRoute.getPages(),
      debugShowCheckedModeBanner: false,
      theme: theme ?? AppTheme.lightTheme,
      darkTheme: darkTheme ?? AppTheme.darkTheme,
      themeMode: themeMode ?? AppTheme.systemThemeMode,
      home: const DashBoardScreen(),
    );
  }
}
