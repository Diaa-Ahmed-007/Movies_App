// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/fire_store_movie.dart' as _i55;
import '../../data/data_source_contract/local/login_data_source.dart' as _i14;
import '../../data/data_source_contract/local/register_data_source.dart' as _i8;
import '../../data/data_source_contract/remote/movies/categories_datasource.dart'
    as _i24;
import '../../data/data_source_contract/remote/movies/filter_datasource.dart'
    as _i29;
import '../../data/data_source_contract/remote/movies/movieDetails_datasource.dart'
    as _i17;
import '../../data/data_source_contract/remote/movies/popular_datasource.dart'
    as _i52;
import '../../data/data_source_contract/remote/movies/rating_datasource.dart'
    as _i26;
import '../../data/data_source_contract/remote/movies/search_datasource.dart'
    as _i6;
import '../../data/data_source_contract/remote/movies/similer_datasource.dart'
    as _i35;
import '../../data/data_source_contract/remote/movies/toprated_datasource.dart'
    as _i21;
import '../../data/data_source_contract/remote/movies/trailler_datasource.dart'
    as _i37;
import '../../data/data_source_contract/remote/movies/upcoming_datasource.dart'
    as _i33;
import '../../data/data_source_contract/remote/series/top_rated_series_data_source.dart'
    as _i12;
import '../../data/data_source_impl/local/fire_store_movie_impl.dart' as _i56;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i15;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i9;
import '../../data/data_source_impl/remote/movies/categories_datasource_impl.dart'
    as _i25;
import '../../data/data_source_impl/remote/movies/filter_datasource_impl.dart'
    as _i30;
import '../../data/data_source_impl/remote/movies/movie_details_datasource_impl.dart'
    as _i18;
import '../../data/data_source_impl/remote/movies/popular_datasource_impl.dart'
    as _i53;
import '../../data/data_source_impl/remote/movies/rating_datasource_impl.dart'
    as _i27;
import '../../data/data_source_impl/remote/movies/search_datasource_impl.dart'
    as _i7;
import '../../data/data_source_impl/remote/movies/similer_datasource_impl.dart'
    as _i36;
import '../../data/data_source_impl/remote/movies/toprated_datasource_impl.dart'
    as _i22;
import '../../data/data_source_impl/remote/movies/trailler_datasource_impl.dart'
    as _i38;
import '../../data/data_source_impl/remote/movies/upcoming_datasource_impl.dart'
    as _i34;
import '../../data/data_source_impl/remote/series/top_rated_series_data_source_impl.dart'
    as _i13;
import '../../data/repository_impl/local/fire_store_movie_repository_impl.dart'
    as _i71;
import '../../data/repository_impl/local/login_repository_impl.dart' as _i32;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i11;
import '../../data/repository_impl/remote/movies/categories_repository_impl.dart'
    as _i45;
import '../../data/repository_impl/remote/movies/filter_repository_impl.dart'
    as _i42;
import '../../data/repository_impl/remote/movies/movie_details_repository_impl.dart'
    as _i51;
import '../../data/repository_impl/remote/movies/popular_repository_impl.dart'
    as _i81;
import '../../data/repository_impl/remote/movies/rate_repository_impl.dart'
    as _i68;
import '../../data/repository_impl/remote/movies/search_repository_impl.dart'
    as _i20;
import '../../data/repository_impl/remote/movies/similer_repository_impl.dart'
    as _i47;
import '../../data/repository_impl/remote/movies/toprated_repository_impl.dart'
    as _i40;
import '../../data/repository_impl/remote/movies/trailler_repository_impl.dart'
    as _i58;
import '../../data/repository_impl/remote/movies/upcoming_repository_impl.dart'
    as _i62;
import '../../data/repository_impl/remote/series/top_rated_series_repo_impl.dart'
    as _i49;
import '../../domain/repository_contract/local/fire_store_movie_repository.dart'
    as _i70;
import '../../domain/repository_contract/local/login_repository.dart' as _i31;
import '../../domain/repository_contract/local/register_repository.dart'
    as _i10;
import '../../domain/repository_contract/remote/movies/categories_repository.dart'
    as _i44;
import '../../domain/repository_contract/remote/movies/filter_repository.dart'
    as _i41;
import '../../domain/repository_contract/remote/movies/movie_details_repository.dart'
    as _i50;
import '../../domain/repository_contract/remote/movies/popular_repository.dart'
    as _i80;
import '../../domain/repository_contract/remote/movies/rating_repository.dart'
    as _i67;
import '../../domain/repository_contract/remote/movies/search_repository.dart'
    as _i19;
import '../../domain/repository_contract/remote/movies/similer_repository.dart'
    as _i46;
import '../../domain/repository_contract/remote/movies/toprated_repository.dart'
    as _i39;
import '../../domain/repository_contract/remote/movies/trailler_repository.dart'
    as _i57;
import '../../domain/repository_contract/remote/movies/upcoming_repository.dart'
    as _i61;
import '../../domain/repository_contract/remote/series/top_rated_series_repo.dart'
    as _i48;
import '../../domain/use_cases/Local/fire_store_movie_use_case.dart' as _i76;
import '../../domain/use_cases/Local/login_usecase.dart' as _i59;
import '../../domain/use_cases/Local/register_usecase.dart' as _i16;
import '../../domain/use_cases/remote/movies/category_usecase.dart' as _i54;
import '../../domain/use_cases/remote/movies/filter_usecase.dart' as _i43;
import '../../domain/use_cases/remote/movies/movie_details_usecase.dart'
    as _i73;
import '../../domain/use_cases/remote/movies/popular_usecase.dart' as _i86;
import '../../domain/use_cases/remote/movies/rate_usecase.dart' as _i84;
import '../../domain/use_cases/remote/movies/search_usecase.dart' as _i23;
import '../../domain/use_cases/remote/movies/similer_usecase.dart' as _i78;
import '../../domain/use_cases/remote/movies/toprated_usecase.dart' as _i74;
import '../../domain/use_cases/remote/movies/trailler_usecase.dart' as _i60;
import '../../domain/use_cases/remote/movies/upcoming_usecase.dart' as _i72;
import '../../domain/use_cases/remote/series/top_rated_series_use_case.dart'
    as _i79;
import '../../Presentation/layouts/category_filter/view_model/category_filter_view_model.dart'
    as _i65;
import '../../Presentation/layouts/home/tabs/browse_tab/view_model/browse_view_model.dart'
    as _i69;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i88;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/top_rated_series_view_model.dart'
    as _i85;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i75;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i82;
import '../../Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart'
    as _i28;
import '../../Presentation/layouts/home/tabs/watch%20list_tab/view_model/watch_list_view_model.dart'
    as _i77;
import '../../Presentation/layouts/login/login_Viewmodel/login_view_model.dart'
    as _i66;
import '../../Presentation/layouts/movie_details/movie_trailler.dart/view_model/trailler_view_model.dart'
    as _i64;
import '../../Presentation/layouts/movie_details/view_model/movie_details_view_model.dart'
    as _i87;
import '../../Presentation/layouts/movie_details/view_model/rate_view_model.dart'
    as _i89;
import '../../Presentation/layouts/movie_details/view_model/similer_view_model.dart'
    as _i83;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i63;
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
    gh.factory<_i23.SearchUseCase>(
        () => _i23.SearchUseCase(gh<_i19.SearchRepository>()));
    gh.factory<_i24.CategoriesDataSource>(
        () => _i25.CategoriesDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i26.RatingDataSource>(
        () => _i27.RatingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i28.SearchTabViewModel>(
        () => _i28.SearchTabViewModel(gh<_i23.SearchUseCase>()));
    gh.factory<_i29.FilterDataSource>(
        () => _i30.FilterDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i31.LoginRepository>(
        () => _i32.LoginRepositoryImpl(gh<_i14.LoginDataSource>()));
    gh.factory<_i33.UpcomingDataSorce>(
        () => _i34.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i35.SimilerDataSource>(
        () => _i36.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i37.TraillerDataSource>(
        () => _i38.TraillerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i39.TopRatedRepository>(
        () => _i40.TopRatedRepositoryImpl(gh<_i21.TopRatedDataSource>()));
    gh.factory<_i41.FilterRepository>(
        () => _i42.FilterRepositoryImpl(gh<_i29.FilterDataSource>()));
    gh.factory<_i43.FilterUseCase>(
        () => _i43.FilterUseCase(gh<_i41.FilterRepository>()));
    gh.factory<_i44.CategoriesRepository>(
        () => _i45.CategoriesRepositoryImpl(gh<_i24.CategoriesDataSource>()));
    gh.factory<_i46.SimilerRepository>(
        () => _i47.SimilerRepositoryImpl(gh<_i35.SimilerDataSource>()));
    gh.factory<_i48.TopRatedSeriesRepo>(
        () => _i49.TopRatedSeriesRepoImpl(gh<_i12.TopRatedSeriesDataSource>()));
    gh.factory<_i50.MovieDetailsReposityory>(() =>
        _i51.MovieDetailsRepositoryImpl(gh<_i17.MovieDetailsDataSource>()));
    gh.factory<_i52.PopularDataSource>(
        () => _i53.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i54.CategoryUseCase>(
        () => _i54.CategoryUseCase(gh<_i44.CategoriesRepository>()));
    gh.factory<_i55.FireStoreMovieDataSource>(
        () => _i56.FireStoreMovieDateSourceImpl(gh<_i5.FireStoreHelper>()));
    gh.factory<_i57.TraillerRepository>(
        () => _i58.TraillerRepositoryImpl(gh<_i37.TraillerDataSource>()));
    gh.factory<_i59.LoginUsecase>(
        () => _i59.LoginUsecase(gh<_i31.LoginRepository>()));
    gh.factory<_i60.TraillerUseCase>(
        () => _i60.TraillerUseCase(gh<_i57.TraillerRepository>()));
    gh.factory<_i61.UpcomingRepository>(
        () => _i62.UpcomingRepositoryImpl(gh<_i33.UpcomingDataSorce>()));
    gh.factory<_i63.RegisterViewModel>(
        () => _i63.RegisterViewModel(gh<_i16.RegisterUsecase>()));
    gh.factory<_i64.TraillerViewMode>(
        () => _i64.TraillerViewMode(gh<_i60.TraillerUseCase>()));
    gh.factory<_i65.CategoryFilterViewModel>(
        () => _i65.CategoryFilterViewModel(gh<_i43.FilterUseCase>()));
    gh.factory<_i66.loginViewModel>(
        () => _i66.loginViewModel(gh<_i59.LoginUsecase>()));
    gh.factory<_i67.RatingRepository>(
        () => _i68.RatingRepositoryImpl(gh<_i26.RatingDataSource>()));
    gh.factory<_i69.BrowseTabViewModel>(
        () => _i69.BrowseTabViewModel(gh<_i54.CategoryUseCase>()));
    gh.factory<_i70.FireStoreMovieRepository>(() =>
        _i71.FireStoreMovieRepositoryImpl(gh<_i55.FireStoreMovieDataSource>()));
    gh.factory<_i72.UpcomingUseCase>(
        () => _i72.UpcomingUseCase(gh<_i61.UpcomingRepository>()));
    gh.factory<_i73.MovieDetailsUseCase>(
        () => _i73.MovieDetailsUseCase(gh<_i50.MovieDetailsReposityory>()));
    gh.factory<_i74.TopRatedUseCase>(
        () => _i74.TopRatedUseCase(gh<_i39.TopRatedRepository>()));
    gh.factory<_i75.TopRatedHomeTabViewModel>(
        () => _i75.TopRatedHomeTabViewModel(gh<_i74.TopRatedUseCase>()));
    gh.factory<_i76.FireStoreMovieUseCase>(
        () => _i76.FireStoreMovieUseCase(gh<_i70.FireStoreMovieRepository>()));
    gh.factory<_i77.WatchListTabViewModel>(
        () => _i77.WatchListTabViewModel(gh<_i76.FireStoreMovieUseCase>()));
    gh.factory<_i78.SimilerUseCase>(
        () => _i78.SimilerUseCase(gh<_i46.SimilerRepository>()));
    gh.factory<_i79.TopRatedSeriesUseCase>(() => _i79.TopRatedSeriesUseCase(
        topRatedSeriesRepo: gh<_i48.TopRatedSeriesRepo>()));
    gh.factory<_i80.PopularRepository>(
        () => _i81.PopularRepositoryImpl(gh<_i52.PopularDataSource>()));
    gh.factory<_i82.UpcomingHomeTabViewModel>(
        () => _i82.UpcomingHomeTabViewModel(gh<_i72.UpcomingUseCase>()));
    gh.factory<_i83.SimilerHomeTabViewModel>(
        () => _i83.SimilerHomeTabViewModel(gh<_i78.SimilerUseCase>()));
    gh.factory<_i84.RatingUseCase>(
        () => _i84.RatingUseCase(gh<_i67.RatingRepository>()));
    gh.factory<_i85.TopRatedSeriesViewModel>(
        () => _i85.TopRatedSeriesViewModel(gh<_i79.TopRatedSeriesUseCase>()));
    gh.factory<_i86.PoplularUseCase>(
        () => _i86.PoplularUseCase(gh<_i80.PopularRepository>()));
    gh.factory<_i87.MovieDetailsHomeTabViewModel>(
        () => _i87.MovieDetailsHomeTabViewModel(
              gh<_i73.MovieDetailsUseCase>(),
              gh<_i84.RatingUseCase>(),
            ));
    gh.factory<_i88.PopularHomeTabViewModel>(
        () => _i88.PopularHomeTabViewModel(gh<_i86.PoplularUseCase>()));
    gh.factory<_i89.RateViewModel>(
        () => _i89.RateViewModel(gh<_i84.RatingUseCase>()));
    return this;
  }
}
