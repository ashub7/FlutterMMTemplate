//@GeneratedMicroModule;DomainPackageModule;package:domain/di/domain_injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/repositories/user_repository.dart' as _i988;
import 'package:domain/usecases/user/get_users_usecase.dart' as _i977;
import 'package:injectable/injectable.dart' as _i526;

class DomainPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i977.GetUsersUseCase>(
        () => _i977.GetUsersUseCase(gh<_i988.UserRepository>()));
  }
}
