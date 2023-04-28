import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/settings_provider.dart';
import '../ui/navigation/app_routes.dart';
import '../ui/screens/splash/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class L2mHelperApp extends StatelessWidget {
  const L2mHelperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsProvider(),
      lazy: false,
      child: Consumer<SettingsProvider>(
        child: SplashScreen.create(),
        builder: (context, appConfig, child){
          return MaterialApp(
            title: 'L2M helper',
            locale: appConfig.locale,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
              // useMaterial3: true,
            ),
            routes: AppRoutes.appRoutes,
            home: child,
          );
        }
      ),
    );
  }
}