import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
    includeMicroPackages: true,
    initializerName: 'init',
    preferRelativeImports: true,
    asExtension: true)

Future<void> configureDependencies() async => getIt.init();