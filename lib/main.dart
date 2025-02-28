import 'package:college_cupid/routes.dart';
import 'package:college_cupid/splash.dart';
import 'package:college_cupid/stores/login_store.dart';
import 'package:provider/provider.dart';
import 'package:college_cupid/shared/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<LoginStore>(create: (_) => LoginStore())],
      child: MaterialApp(
        title: 'CollegeCupid',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: CupidColors.titleColor),
          textSelectionTheme: TextSelectionThemeData(
            selectionHandleColor: CupidColors.titleColor,
            cursorColor: CupidColors.secondaryColor,
            selectionColor: CupidColors.secondaryColor.withOpacity(0.75),
          ),
        ),
        initialRoute: SplashScreen.id,
        routes: routes,
      ),
    );
  }
}
