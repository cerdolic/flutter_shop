import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop/router.dart';
import 'package:shop/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(
    ProviderScope(
      child: MyApp(
        savedThemeMode: savedThemeMode,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    this.savedThemeMode,
  });

  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.changeLanguage(newLocale);
  }

  static Locale getLocale(BuildContext context) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    return state?.locale ?? Locale("en");
  }

  final AdaptiveThemeMode? savedThemeMode;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale = Locale("en");

  final GoRouter _router = GoRouter(
    initialLocation: '/tabs',
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
    redirect: (context, state) {
      return null;
    },
    routes: routes,
  );

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: darkTheme,
      initial: widget.savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: theme,
        darkTheme: darkTheme,
        locale: locale,
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }

  changeLanguage(Locale newLocale) {
    setState(() {
      locale = newLocale;
    });
  }
}
