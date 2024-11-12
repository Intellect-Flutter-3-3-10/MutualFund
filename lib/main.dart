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
      title: 'Mutual Funds App',
      getPages: AppRoute.getPages(),
      debugShowCheckedModeBanner: false,
      theme: theme ?? AppTheme.lightTheme,
      darkTheme: darkTheme ?? AppTheme.darkTheme,
      themeMode: themeMode ?? AppTheme.systemThemeMode,
      home: const DashBoardScreen(),
    );
  }
}
