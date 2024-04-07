// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i21;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i19;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i20;
import '../../data/data_source_contract/remote/popular_datasource.dart' as _i8;
import '../../data/data_source_contract/remote/toprated_datasource.dart' as _i4;
import '../../data/data_source_contract/remote/upcoming_datasource.dart' as _i6;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart' as _i9;
import '../../data/data_source_impl/remote/toprated_datasource_impl.dart'
    as _i5;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i7;
import '../../data/repository_impl/popular_repository_impl.dart' as _i15;
import '../../data/repository_impl/toprated_repository_impl.dart' as _i11;
import '../../data/repository_impl/upcoming_repository_impl.dart' as _i13;
import '../../domain/repository_contract/popular_repository.dart' as _i14;
import '../../domain/repository_contract/toprated_repository.dart' as _i10;
import '../../domain/repository_contract/upcoming_repository.dart' as _i12;
import '../../domain/use_cases/popular_usecase.dart' as _i16;
import '../../domain/use_cases/toprated_usecase.dart' as _i18;
import '../../domain/use_cases/upcoming_usecase.dart' as _i17;
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
    gh.factory<_i4.TopRatedDataSource>(
        () => _i5.TopRatedDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i6.UpcomingDataSorce>(
        () => _i7.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i8.PopularDataSource>(
        () => _i9.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i10.TopRatedRepository>(
        () => _i11.TopRatedRepositoryImpl(gh<_i4.TopRatedDataSource>()));
    gh.factory<_i12.UpcomingRepository>(
        () => _i13.UpcomingRepositoryImpl(gh<_i6.UpcomingDataSorce>()));
    gh.factory<_i14.PopularRepository>(
        () => _i15.PopularRepositoryImpl(gh<_i8.PopularDataSource>()));
    gh.factory<_i16.PopularUseCase>(
        () => _i16.PopularUseCase(gh<_i14.PopularRepository>()));
    gh.factory<_i17.UpcomingUseCase>(
        () => _i17.UpcomingUseCase(gh<_i12.UpcomingRepository>()));
    gh.factory<_i18.TopRatedUseCase>(
        () => _i18.TopRatedUseCase(gh<_i10.TopRatedRepository>()));
    gh.factory<_i19.TopRatedHomeTabViewModel>(
        () => _i19.TopRatedHomeTabViewModel(gh<_i18.TopRatedUseCase>()));
    gh.factory<_i20.UpcomingHomeTabViewModel>(
        () => _i20.UpcomingHomeTabViewModel(gh<_i17.UpcomingUseCase>()));
    gh.factory<_i21.PopularHomeTabViewModel>(
        () => _i21.PopularHomeTabViewModel(gh<_i16.PopularUseCase>()));
    return this;
  }
}
