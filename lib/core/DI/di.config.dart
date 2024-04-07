// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/remote/popular_datasource.dart' as _i6;
import '../../data/data_source_contract/remote/upcoming_datasource.dart' as _i4;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart' as _i7;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i5;
import '../../data/repository_impl/popular_repository_impl.dart' as _i11;
import '../../data/repository_impl/upcoming_repository_impl.dart' as _i9;
import '../../domain/repository_contract/popular_repository_contract.dart'
    as _i10;
import '../../domain/repository_contract/upcoming_repository.dart' as _i8;
import '../../domain/use_cases/popular_usecase.dart' as _i13;
import '../../domain/use_cases/upcoming_usecase.dart' as _i12;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i15;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i14;
import '../api/api_manger.dart' as _i3;

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
    gh.singleton<_i3.ApiManger>(() => _i3.ApiManger());
    gh.factory<_i4.UpcomingDataSorce>(
        () => _i5.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i6.PopularDataSource>(
        () => _i7.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i8.UpcomingRepository>(
        () => _i9.UpcomingRepositoryImpl(gh<_i4.UpcomingDataSorce>()));
    gh.factory<_i10.PopularRepository>(
        () => _i11.PopularRepositoryImpl(gh<_i6.PopularDataSource>()));
    gh.factory<_i12.UpcomingUseCase>(
        () => _i12.UpcomingUseCase(gh<_i8.UpcomingRepository>()));
    gh.factory<_i13.PopularUseCase>(
        () => _i13.PopularUseCase(gh<_i10.PopularRepository>()));
    gh.factory<_i14.UpcomingHomeTabViewModel>(
        () => _i14.UpcomingHomeTabViewModel(gh<_i12.UpcomingUseCase>()));
    gh.factory<_i15.PopularHomeTabViewModel>(
        () => _i15.PopularHomeTabViewModel(gh<_i13.PopularUseCase>()));
    return this;
  }
}
