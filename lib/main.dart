import 'package:flutter/material.dart';
import 'package:flutter_starter_mmm/navigation/main_screen.dart';
import 'di/injector.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MainScreen());
}
