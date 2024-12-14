import 'package:design/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_starter_mmm/navigation/app_router.dart';
import 'package:design/theme/app_theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: _appRouter.config(),
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: appTheme(
            context,
            lightColorScheme,
            fontPreference,
            lightTextTheme,
            ThemeData.light().dividerColor,
            SystemUiOverlayStyle.dark,
          ),
          darkTheme: appTheme(
            context,
            darkColorScheme,
            fontPreference,
            darkTextTheme,
            ThemeData.dark().dividerColor,
            SystemUiOverlayStyle.light,
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('es')
          ],
        );
      },
    );
  }
}
