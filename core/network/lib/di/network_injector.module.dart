//@GeneratedMicroModule;NetworkPackageModule;package:network/di/network_injector.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;
import 'package:network/datasource/user_remote_data_source.dart' as _i28;
import 'package:network/di/network_module.dart' as _i191;
import 'package:network/network/api_client.dart' as _i506;

class NetworkPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final networkModule = _$NetworkModule();
    gh.singleton<_i361.Dio>(() => networkModule.provideDio());
    gh.lazySingleton<_i506.ApiClient>(() => _i506.ApiClient(gh<_i361.Dio>()));
    gh.lazySingleton<_i28.UserRemoteDataSource>(
        () => _i28.UserRemoteDataSourceImpl(apiClient: gh<_i506.ApiClient>()));
  }
}

class _$NetworkModule extends _i191.NetworkModule {}
