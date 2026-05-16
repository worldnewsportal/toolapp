import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/theme/theme_service.dart';
import 'core/routing/app_router.dart';
import 'core/services/unity_ads_service.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeService()),
        ChangeNotifierProvider(create: (_) => UnityAdsService()..initialize()),
      ],
      child: const MultiToolApp(),
    ),
  );
}

class MultiToolApp extends StatelessWidget {
  const MultiToolApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);

    return MaterialApp.router(
      title: 'MultiTool Hub',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: themeService.currentTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
    );
  }
}
