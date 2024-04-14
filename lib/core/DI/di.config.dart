// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/register_data_source.dart' as _i4;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i5;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i7;
import '../../domain/repository_contract/local/register_repository.dart' as _i6;
import '../../domain/use_cases/Local/register_usecase.dart' as _i8;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i9;
import '../firebase/auth_helper.dart' as _i3;

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
    gh.singleton<_i3.AuthHelper>(() => _i3.AuthHelper());
    gh.factory<_i4.RegisterDataSource>(
        () => _i5.registerDataSourceImpl(gh<_i3.AuthHelper>()));
    gh.factory<_i6.RegisterRepository>(() => _i7.registerRepositoryImpl(
        registerDataSource: gh<_i4.RegisterDataSource>()));
    gh.factory<_i8.RegisterUsecase>(
        () => _i8.RegisterUsecase(gh<_i6.RegisterRepository>()));
    gh.factory<_i9.registerViewModel>(
        () => _i9.registerViewModel(gh<_i8.RegisterUsecase>()));
    return this;
  }
}
