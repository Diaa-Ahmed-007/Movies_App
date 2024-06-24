// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/fire_store_movie.dart' as _i61;
import '../../data/data_source_contract/local/login_data_source.dart' as _i14;
import '../../data/data_source_contract/local/register_data_source.dart' as _i8;
import '../../data/data_source_contract/remote/movies/categories_datasource.dart'
    as _i29;
import '../../data/data_source_contract/remote/movies/filter_datasource.dart'
    as _i34;
import '../../data/data_source_contract/remote/movies/movieDetails_datasource.dart'
    as _i17;
import '../../data/data_source_contract/remote/movies/now_playing_datasource.dart'
    as _i25;
import '../../data/data_source_contract/remote/movies/popular_datasource.dart'
    as _i57;
import '../../data/data_source_contract/remote/movies/rating_datasource.dart'
    as _i31;
import '../../data/data_source_contract/remote/movies/search_datasource.dart'
    as _i6;
import '../../data/data_source_contract/remote/movies/similer_datasource.dart'
    as _i40;
import '../../data/data_source_contract/remote/movies/toprated_datasource.dart'
    as _i21;
import '../../data/data_source_contract/remote/movies/trailler_datasource.dart'
    as _i42;
import '../../data/data_source_contract/remote/movies/upcoming_datasource.dart'
    as _i38;
import '../../data/data_source_contract/remote/series/popular_series_datasource.dart'
    as _i23;
import '../../data/data_source_contract/remote/series/top_rated_series_data_source.dart'
    as _i12;
import '../../data/data_source_impl/local/fire_store_movie_impl.dart' as _i62;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i15;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i9;
import '../../data/data_source_impl/remote/movies/categories_datasource_impl.dart'
    as _i30;
import '../../data/data_source_impl/remote/movies/filter_datasource_impl.dart'
    as _i35;
import '../../data/data_source_impl/remote/movies/movie_details_datasource_impl.dart'
    as _i18;
import '../../data/data_source_impl/remote/movies/now_playing_datasource_impl.dart'
    as _i26;
import '../../data/data_source_impl/remote/movies/popular_datasource_impl.dart'
    as _i58;
import '../../data/data_source_impl/remote/movies/rating_datasource_impl.dart'
    as _i32;
import '../../data/data_source_impl/remote/movies/search_datasource_impl.dart'
    as _i7;
import '../../data/data_source_impl/remote/movies/similer_datasource_impl.dart'
    as _i41;
import '../../data/data_source_impl/remote/movies/toprated_datasource_impl.dart'
    as _i22;
import '../../data/data_source_impl/remote/movies/trailler_datasource_impl.dart'
    as _i43;
import '../../data/data_source_impl/remote/movies/upcoming_datasource_impl.dart'
    as _i39;
import '../../data/data_source_impl/remote/series/popular_datasource_impl.dart'
    as _i24;
import '../../data/data_source_impl/remote/series/top_rated_series_data_source_impl.dart'
    as _i13;
import '../../data/repository_impl/local/fire_store_movie_repository_impl.dart'
    as _i77;
import '../../data/repository_impl/local/login_repository_impl.dart' as _i37;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i11;
import '../../data/repository_impl/remote/movies/categories_repository_impl.dart'
    as _i50;
import '../../data/repository_impl/remote/movies/filter_repository_impl.dart'
    as _i47;
import '../../data/repository_impl/remote/movies/movie_details_repository_impl.dart'
    as _i56;
import '../../data/repository_impl/remote/movies/popular_repository_impl.dart'
    as _i87;
import '../../data/repository_impl/remote/movies/rate_repository_impl.dart'
    as _i74;
import '../../data/repository_impl/remote/movies/search_repository_impl.dart'
    as _i20;
import '../../data/repository_impl/remote/movies/similer_repository_impl.dart'
    as _i52;
import '../../data/repository_impl/remote/movies/toprated_repository_impl.dart'
    as _i45;
import '../../data/repository_impl/remote/movies/trailler_repository_impl.dart'
    as _i64;
import '../../data/repository_impl/remote/movies/upcoming_repository_impl.dart'
    as _i68;
import '../../data/repository_impl/remote/series/top_rated_series_repo_impl.dart'
    as _i54;
import '../../domain/repository_contract/local/fire_store_movie_repository.dart'
    as _i76;
import '../../domain/repository_contract/local/login_repository.dart' as _i36;
import '../../domain/repository_contract/local/register_repository.dart'
    as _i10;
import '../../domain/repository_contract/remote/movies/categories_repository.dart'
    as _i49;
import '../../domain/repository_contract/remote/movies/filter_repository.dart'
    as _i46;
import '../../domain/repository_contract/remote/movies/movie_details_repository.dart'
    as _i55;
import '../../domain/repository_contract/remote/movies/popular_repository.dart'
    as _i86;
import '../../domain/repository_contract/remote/movies/rating_repository.dart'
    as _i73;
import '../../domain/repository_contract/remote/movies/search_repository.dart'
    as _i19;
import '../../domain/repository_contract/remote/movies/similer_repository.dart'
    as _i51;
import '../../domain/repository_contract/remote/movies/toprated_repository.dart'
    as _i44;
import '../../domain/repository_contract/remote/movies/trailler_repository.dart'
    as _i63;
import '../../domain/repository_contract/remote/movies/upcoming_repository.dart'
    as _i67;
import '../../domain/repository_contract/remote/series/top_rated_series_repo.dart'
    as _i53;
import '../../domain/use_cases/Local/fire_store_movie_use_case.dart' as _i82;
import '../../domain/use_cases/Local/login_usecase.dart' as _i65;
import '../../domain/use_cases/Local/register_usecase.dart' as _i16;
import '../../domain/use_cases/remote/movies/category_usecase.dart' as _i60;
import '../../domain/use_cases/remote/movies/filter_usecase.dart' as _i48;
import '../../domain/use_cases/remote/movies/movie_details_usecase.dart'
    as _i79;
import '../../domain/use_cases/remote/movies/popular_usecase.dart' as _i92;
import '../../domain/use_cases/remote/movies/rate_usecase.dart' as _i90;
import '../../domain/use_cases/remote/movies/search_usecase.dart' as _i28;
import '../../domain/use_cases/remote/movies/similer_usecase.dart' as _i84;
import '../../domain/use_cases/remote/movies/toprated_usecase.dart' as _i80;
import '../../domain/use_cases/remote/movies/trailler_usecase.dart' as _i66;
import '../../domain/use_cases/remote/movies/upcoming_usecase.dart' as _i78;
import '../../domain/use_cases/remote/series/top_rated_series_use_case.dart'
    as _i85;
import '../../Presentation/layouts/category_filter/view_model/category_filter_view_model.dart'
    as _i71;
import '../../Presentation/layouts/home/tabs/browse_tab/view_model/browse_view_model.dart'
    as _i75;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/last_updated_view_model.dart'
    as _i27;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i94;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_series_view_model.dart'
    as _i59;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/top_rated_series_view_model.dart'
    as _i91;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i81;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i88;
import '../../Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart'
    as _i33;
import '../../Presentation/layouts/home/tabs/watch%20list_tab/view_model/watch_list_view_model.dart'
    as _i83;
import '../../Presentation/layouts/login/login_Viewmodel/login_view_model.dart'
    as _i72;
import '../../Presentation/layouts/movie_details/movie_trailler.dart/view_model/trailler_view_model.dart'
    as _i70;
import '../../Presentation/layouts/movie_details/view_model/movie_details_view_model.dart'
    as _i93;
import '../../Presentation/layouts/movie_details/view_model/rate_view_model.dart'
    as _i95;
import '../../Presentation/layouts/movie_details/view_model/similer_view_model.dart'
    as _i89;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i69;
import '../api/api_manger.dart' as _i3;
import '../firebase/auth_helper.dart' as _i4;
import '../firebase/firestore_helper.dart' as _i5;

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
    gh.singleton<_i4.AuthHelper>(() => _i4.AuthHelper());
    gh.singleton<_i5.FireStoreHelper>(() => _i5.FireStoreHelper());
    gh.factory<_i6.SearchDataSource>(
        () => _i7.SearchDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i8.RegisterDataSource>(
        () => _i9.registerDataSourceImpl(gh<_i4.AuthHelper>()));
    gh.factory<_i10.RegisterRepository>(() => _i11.registerRepositoryImpl(
        registerDataSource: gh<_i8.RegisterDataSource>()));
    gh.factory<_i12.TopRatedSeriesDataSource>(
        () => _i13.TopRatedSeriesDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i14.LoginDataSource>(
        () => _i15.LoginDataSourceImpl(gh<_i4.AuthHelper>()));
    gh.factory<_i16.RegisterUsecase>(
        () => _i16.RegisterUsecase(gh<_i10.RegisterRepository>()));
    gh.factory<_i17.MovieDetailsDataSource>(
        () => _i18.MovieDetailsDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i19.SearchRepository>(
        () => _i20.SearchRepositoryImpl(gh<_i6.SearchDataSource>()));
    gh.factory<_i21.TopRatedDataSource>(
        () => _i22.TopRatedDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i23.PopularSeriesDatasource>(
        () => _i24.PopularSeriesDatasourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i25.NowPlayingDatasource>(
        () => _i26.NowPlayingDatasourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i27.LastUpdatedViewModel>(
        () => _i27.LastUpdatedViewModel(gh<_i25.NowPlayingDatasource>()));
    gh.factory<_i28.SearchUseCase>(
        () => _i28.SearchUseCase(gh<_i19.SearchRepository>()));
    gh.factory<_i29.CategoriesDataSource>(
        () => _i30.CategoriesDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i31.RatingDataSource>(
        () => _i32.RatingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i33.SearchTabViewModel>(
        () => _i33.SearchTabViewModel(gh<_i28.SearchUseCase>()));
    gh.factory<_i34.FilterDataSource>(
        () => _i35.FilterDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i36.LoginRepository>(
        () => _i37.LoginRepositoryImpl(gh<_i14.LoginDataSource>()));
    gh.factory<_i38.UpcomingDataSorce>(
        () => _i39.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i40.SimilerDataSource>(
        () => _i41.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i42.TraillerDataSource>(
        () => _i43.TraillerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i44.TopRatedRepository>(
        () => _i45.TopRatedRepositoryImpl(gh<_i21.TopRatedDataSource>()));
    gh.factory<_i46.FilterRepository>(
        () => _i47.FilterRepositoryImpl(gh<_i34.FilterDataSource>()));
    gh.factory<_i48.FilterUseCase>(
        () => _i48.FilterUseCase(gh<_i46.FilterRepository>()));
    gh.factory<_i49.CategoriesRepository>(
        () => _i50.CategoriesRepositoryImpl(gh<_i29.CategoriesDataSource>()));
    gh.factory<_i51.SimilerRepository>(
        () => _i52.SimilerRepositoryImpl(gh<_i40.SimilerDataSource>()));
    gh.factory<_i53.TopRatedSeriesRepo>(
        () => _i54.TopRatedSeriesRepoImpl(gh<_i12.TopRatedSeriesDataSource>()));
    gh.factory<_i55.MovieDetailsReposityory>(() =>
        _i56.MovieDetailsRepositoryImpl(gh<_i17.MovieDetailsDataSource>()));
    gh.factory<_i57.PopularDataSource>(
        () => _i58.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i59.PopularSeriesViewModel>(
        () => _i59.PopularSeriesViewModel(gh<_i23.PopularSeriesDatasource>()));
    gh.factory<_i60.CategoryUseCase>(
        () => _i60.CategoryUseCase(gh<_i49.CategoriesRepository>()));
    gh.factory<_i61.FireStoreMovieDataSource>(
        () => _i62.FireStoreMovieDateSourceImpl(gh<_i5.FireStoreHelper>()));
    gh.factory<_i63.TraillerRepository>(
        () => _i64.TraillerRepositoryImpl(gh<_i42.TraillerDataSource>()));
    gh.factory<_i65.LoginUsecase>(
        () => _i65.LoginUsecase(gh<_i36.LoginRepository>()));
    gh.factory<_i66.TraillerUseCase>(
        () => _i66.TraillerUseCase(gh<_i63.TraillerRepository>()));
    gh.factory<_i67.UpcomingRepository>(
        () => _i68.UpcomingRepositoryImpl(gh<_i38.UpcomingDataSorce>()));
    gh.factory<_i69.RegisterViewModel>(
        () => _i69.RegisterViewModel(gh<_i16.RegisterUsecase>()));
    gh.factory<_i70.TraillerViewMode>(
        () => _i70.TraillerViewMode(gh<_i66.TraillerUseCase>()));
    gh.factory<_i71.CategoryFilterViewModel>(
        () => _i71.CategoryFilterViewModel(gh<_i48.FilterUseCase>()));
    gh.factory<_i72.loginViewModel>(
        () => _i72.loginViewModel(gh<_i65.LoginUsecase>()));
    gh.factory<_i73.RatingRepository>(
        () => _i74.RatingRepositoryImpl(gh<_i31.RatingDataSource>()));
    gh.factory<_i75.BrowseTabViewModel>(
        () => _i75.BrowseTabViewModel(gh<_i60.CategoryUseCase>()));
    gh.factory<_i76.FireStoreMovieRepository>(() =>
        _i77.FireStoreMovieRepositoryImpl(gh<_i61.FireStoreMovieDataSource>()));
    gh.factory<_i78.UpcomingUseCase>(
        () => _i78.UpcomingUseCase(gh<_i67.UpcomingRepository>()));
    gh.factory<_i79.MovieDetailsUseCase>(
        () => _i79.MovieDetailsUseCase(gh<_i55.MovieDetailsReposityory>()));
    gh.factory<_i80.TopRatedUseCase>(
        () => _i80.TopRatedUseCase(gh<_i44.TopRatedRepository>()));
    gh.factory<_i81.TopRatedHomeTabViewModel>(
        () => _i81.TopRatedHomeTabViewModel(gh<_i80.TopRatedUseCase>()));
    gh.factory<_i82.FireStoreMovieUseCase>(
        () => _i82.FireStoreMovieUseCase(gh<_i76.FireStoreMovieRepository>()));
    gh.factory<_i83.WatchListTabViewModel>(
        () => _i83.WatchListTabViewModel(gh<_i82.FireStoreMovieUseCase>()));
    gh.factory<_i84.SimilerUseCase>(
        () => _i84.SimilerUseCase(gh<_i51.SimilerRepository>()));
    gh.factory<_i85.TopRatedSeriesUseCase>(() => _i85.TopRatedSeriesUseCase(
        topRatedSeriesRepo: gh<_i53.TopRatedSeriesRepo>()));
    gh.factory<_i86.PopularRepository>(
        () => _i87.PopularRepositoryImpl(gh<_i57.PopularDataSource>()));
    gh.factory<_i88.UpcomingHomeTabViewModel>(
        () => _i88.UpcomingHomeTabViewModel(gh<_i78.UpcomingUseCase>()));
    gh.factory<_i89.SimilerHomeTabViewModel>(
        () => _i89.SimilerHomeTabViewModel(gh<_i84.SimilerUseCase>()));
    gh.factory<_i90.RatingUseCase>(
        () => _i90.RatingUseCase(gh<_i73.RatingRepository>()));
    gh.factory<_i91.TopRatedSeriesViewModel>(
        () => _i91.TopRatedSeriesViewModel(gh<_i85.TopRatedSeriesUseCase>()));
    gh.factory<_i92.PoplularUseCase>(
        () => _i92.PoplularUseCase(gh<_i86.PopularRepository>()));
    gh.factory<_i93.MovieDetailsHomeTabViewModel>(
        () => _i93.MovieDetailsHomeTabViewModel(
              gh<_i79.MovieDetailsUseCase>(),
              gh<_i90.RatingUseCase>(),
            ));
    gh.factory<_i94.PopularHomeTabViewModel>(
        () => _i94.PopularHomeTabViewModel(gh<_i92.PoplularUseCase>()));
    gh.factory<_i95.RateViewModel>(
        () => _i95.RateViewModel(gh<_i90.RatingUseCase>()));
    return this;
  }
}
