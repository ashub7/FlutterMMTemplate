//@GeneratedMicroModule;FeaturesPackageModule;package:features/di/features_injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:domain/usecases/user/get_users_usecase.dart' as _i977;
import 'package:features/home/cubit/home_cubit.dart' as _i730;
import 'package:injectable/injectable.dart' as _i526;

class FeaturesPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i730.HomeCubit>(
        () => _i730.HomeCubit(gh<_i977.GetUsersUseCase>()));
  }
}
