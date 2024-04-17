// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/login_data_source.dart' as _i8;
import '../../data/data_source_contract/local/register_data_source.dart' as _i4;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i9;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i5;
import '../../data/repository_impl/local/login_repository_impl.dart' as _i12;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i7;
import '../../domain/repository_contract/local/login_repository.dart' as _i11;
import '../../domain/repository_contract/local/register_repository.dart' as _i6;
import '../../domain/use_cases/Local/login_usecase.dart' as _i13;
import '../../domain/use_cases/Local/register_usecase.dart' as _i10;
import '../../Presentation/layouts/login/login_Viewmodel/login_view_model.dart'
    as _i15;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i14;
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
    gh.factory<_i8.LoginDataSource>(
        () => _i9.LoginDataSourceImpl(gh<_i3.AuthHelper>()));
    gh.factory<_i10.RegisterUsecase>(
        () => _i10.RegisterUsecase(gh<_i6.RegisterRepository>()));
    gh.factory<_i11.LoginRepository>(
        () => _i12.LoginRepositoryImpl(gh<_i8.LoginDataSource>()));
    gh.factory<_i13.LoginUsecase>(
        () => _i13.LoginUsecase(gh<_i11.LoginRepository>()));
    gh.factory<_i14.registerViewModel>(
        () => _i14.registerViewModel(gh<_i10.RegisterUsecase>()));
    gh.factory<_i15.loginViewModel>(
        () => _i15.loginViewModel(gh<_i13.LoginUsecase>()));
    return this;
  }
}
