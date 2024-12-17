import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:network/di/network_injector.module.dart';
import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
    includeMicroPackages: true,
    initializerName: 'init',
    preferRelativeImports: true,
    externalPackageModulesBefore: [ExternalModule(NetworkPackageModule)],
    asExtension: true)
Future<void> configureDependencies() async => getIt.init();
