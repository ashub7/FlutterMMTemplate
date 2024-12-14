import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_components.dart';

const String fontPreference = "Outfit";

final TextTheme darkTextTheme = GoogleFonts.getTextTheme(
  fontPreference,
  ThemeData.dark().textTheme,
);
final TextTheme lightTextTheme = GoogleFonts.getTextTheme(
  fontPreference,
  ThemeData.light().textTheme,
);

ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0XFF2CD312),
);

ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0XFF2CD312),
  brightness: Brightness.dark,
);

ThemeData appTheme(
  BuildContext context,
  ColorScheme colorScheme,
  String fontPreference,
  TextTheme textTheme,
  Color dividerColor,
  SystemUiOverlayStyle systemUiOverlayStyle,
) {
  return ThemeData.from(
    colorScheme: colorScheme,
    useMaterial3: false,
  ).copyWith(
    textTheme: textTheme,
    colorScheme: colorScheme,
    dialogTheme: dialogTheme,
    timePickerTheme: timePickerTheme,
    appBarTheme: appBarTheme(systemUiOverlayStyle),
    scaffoldBackgroundColor: colorScheme.surface,
    dialogBackgroundColor: colorScheme.surface,
    navigationBarTheme: navigationBarThemeData(
      colorScheme,
      textTheme,
    ),
    navigationDrawerTheme: navigationDrawerThemeData(
      colorScheme,
      textTheme,
    ),
    drawerTheme: drawerThemeData(
      colorScheme,
      textTheme,
    ),
    applyElevationOverlayColor: true,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme(
      context,
      colorScheme,
    ),
    dividerTheme: DividerThemeData(color: dividerColor),
  );
}
