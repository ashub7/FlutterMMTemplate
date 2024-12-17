//@GeneratedMicroModule;DataPackageModule;package:data/di/data_injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/repository/user_repository_impl.dart' as _i320;
import 'package:domain/repositories/user_repository.dart' as _i988;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/datasource/user_remote_data_source.dart' as _i28;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i988.UserRepository>(
        () => _i320.UserRepositoryImpl(gh<_i28.UserRemoteDataSource>()));
  }
}
