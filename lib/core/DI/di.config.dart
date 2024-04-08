// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/remote/movieDetails_datasource.dart'
    as _i6;
import '../../data/data_source_contract/remote/popular_datasource.dart' as _i16;
import '../../data/data_source_contract/remote/similer_datasource.dart' as _i12;
import '../../data/data_source_contract/remote/toprated_datasource.dart' as _i4;
import '../../data/data_source_contract/remote/upcoming_datasource.dart' as _i8;
import '../../data/data_source_impl/remote/movie_details_datasource_impl.dart'
    as _i7;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart'
    as _i17;
import '../../data/data_source_impl/remote/similer_datasource_impl.dart'
    as _i13;
import '../../data/data_source_impl/remote/toprated_datasource_impl.dart'
    as _i5;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i9;
import '../../data/repository_impl/movie_details_repository_impl.dart' as _i11;
import '../../data/repository_impl/popular_repository_impl.dart' as _i25;
import '../../data/repository_impl/similer_repository_impl.dart' as _i15;
import '../../data/repository_impl/toprated_repository_impl.dart' as _i20;
import '../../data/repository_impl/upcoming_repository_impl.dart' as _i22;
import '../../domain/repository_contract/movie_details_repository.dart' as _i10;
import '../../domain/repository_contract/popular_repository.dart' as _i24;
import '../../domain/repository_contract/similer_repository.dart' as _i14;
import '../../domain/repository_contract/toprated_repository.dart' as _i19;
import '../../domain/repository_contract/upcoming_repository.dart' as _i21;
import '../../domain/use_cases/movie_details_usecase.dart' as _i23;
import '../../domain/use_cases/popular_usecase.dart' as _i26;
import '../../domain/use_cases/similer_usecase.dart' as _i18;
import '../../domain/use_cases/toprated_usecase.dart' as _i30;
import '../../domain/use_cases/upcoming_usecase.dart' as _i29;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/movie_details_view_model.dart'
    as _i27;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i31;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/similer_view_model.dart'
    as _i28;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i32;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i33;
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
    gh.factory<_i6.MovieDetailsDataSource>(
        () => _i7.MovieDetailsDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i8.UpcomingDataSorce>(
        () => _i9.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i10.MovieDetailsReposityory>(() =>
        _i11.MovieDetailsRepositoryImpl(gh<_i6.MovieDetailsDataSource>()));
    gh.factory<_i12.SimilerDataSource>(
        () => _i13.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i14.SimilerRepository>(
        () => _i15.SimilerRepositoryImpl(gh<_i12.SimilerDataSource>()));
    gh.factory<_i16.PopularDataSource>(
        () => _i17.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i18.SimilerUseCase>(
        () => _i18.SimilerUseCase(gh<_i14.SimilerRepository>()));
    gh.factory<_i19.TopRatedRepository>(
        () => _i20.TopRatedRepositoryImpl(gh<_i4.TopRatedDataSource>()));
    gh.factory<_i21.UpcomingRepository>(
        () => _i22.UpcomingRepositoryImpl(gh<_i8.UpcomingDataSorce>()));
    gh.factory<_i23.MovieDetailsUseCase>(
        () => _i23.MovieDetailsUseCase(gh<_i10.MovieDetailsReposityory>()));
    gh.factory<_i24.PopularRepository>(
        () => _i25.PopularRepositoryImpl(gh<_i16.PopularDataSource>()));
    gh.factory<_i26.PoplularUseCase>(
        () => _i26.PoplularUseCase(gh<_i24.PopularRepository>()));
    gh.factory<_i27.MovieDetailsHomeTabViewModel>(() =>
        _i27.MovieDetailsHomeTabViewModel(gh<_i23.MovieDetailsUseCase>()));
    gh.factory<_i28.SimilerHomeTabViewModel>(
        () => _i28.SimilerHomeTabViewModel(gh<_i18.SimilerUseCase>()));
    gh.factory<_i29.UpcomingUseCase>(
        () => _i29.UpcomingUseCase(gh<_i21.UpcomingRepository>()));
    gh.factory<_i30.TopRatedUseCase>(
        () => _i30.TopRatedUseCase(gh<_i19.TopRatedRepository>()));
    gh.factory<_i31.PopularHomeTabViewModel>(
        () => _i31.PopularHomeTabViewModel(gh<_i26.PoplularUseCase>()));
    gh.factory<_i32.TopRatedHomeTabViewModel>(
        () => _i32.TopRatedHomeTabViewModel(gh<_i30.TopRatedUseCase>()));
    gh.factory<_i33.UpcomingHomeTabViewModel>(
        () => _i33.UpcomingHomeTabViewModel(gh<_i29.UpcomingUseCase>()));
    return this;
  }
}
