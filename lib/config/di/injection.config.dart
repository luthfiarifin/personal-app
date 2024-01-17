// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/data/network/api_client.dart' as _i3;
import '../../features/home/data/datasource/home_remote_datasource.dart' as _i4;
import '../../features/home/data/repository/home_repository_impl.dart' as _i6;
import '../../features/home/domain/repository/home_repository.dart' as _i5;
import '../../features/home/domain/usecase/get_home_data_use_case.dart' as _i7;
import '../../features/home/presentation/cubit/home_cubit.dart' as _i8;
import 'core.injection.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreInjectionModule = _$CoreInjectionModule();
    gh.lazySingleton<_i3.ApiClient>(() => coreInjectionModule.apiClient);
    gh.lazySingleton<_i4.HomeRemoteDataSource>(
        () => _i4.HomeRemoteDataSourceImpl(gh<_i3.ApiClient>()));
    gh.lazySingleton<_i5.HomeRepository>(
        () => _i6.HomeRepositoryImpl(gh<_i4.HomeRemoteDataSource>()));
    gh.lazySingleton<_i7.GetHomeDataUseCase>(
        () => _i7.GetHomeDataUseCase(gh<_i5.HomeRepository>()));
    gh.lazySingleton<_i8.HomeCubit>(
        () => _i8.HomeCubit(gh<_i7.GetHomeDataUseCase>()));
    return this;
  }
}

class _$CoreInjectionModule extends _i9.CoreInjectionModule {}
