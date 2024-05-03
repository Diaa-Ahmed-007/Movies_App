// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/fire_store_movie.dart' as _i47;
import '../../data/data_source_contract/local/login_data_source.dart' as _i16;
import '../../data/data_source_contract/local/register_data_source.dart'
    as _i10;
import '../../data/data_source_contract/remote/categories_datasource.dart'
    as _i19;
import '../../data/data_source_contract/remote/filter_datasource.dart' as _i8;
import '../../data/data_source_contract/remote/movieDetails_datasource.dart'
    as _i14;
import '../../data/data_source_contract/remote/popular_datasource.dart' as _i41;
import '../../data/data_source_contract/remote/rating_datasource.dart' as _i25;
import '../../data/data_source_contract/remote/search_datasource.dart' as _i29;
import '../../data/data_source_contract/remote/similer_datasource.dart' as _i27;
import '../../data/data_source_contract/remote/toprated_datasource.dart' as _i6;
import '../../data/data_source_contract/remote/trailler_datasource.dart'
    as _i23;
import '../../data/data_source_contract/remote/upcoming_datasource.dart'
    as _i21;
import '../../data/data_source_impl/local/fire_store_movie_impl.dart' as _i48;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i17;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i11;
import '../../data/data_source_impl/remote/categories_datasource_impl.dart'
    as _i20;
import '../../data/data_source_impl/remote/filter_datasource_impl.dart' as _i9;
import '../../data/data_source_impl/remote/movie_details_datasource_impl.dart'
    as _i15;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart'
    as _i42;
import '../../data/data_source_impl/remote/rating_datasource_impl.dart' as _i26;
import '../../data/data_source_impl/remote/search_datasource_impl.dart' as _i30;
import '../../data/data_source_impl/remote/similer_datasource_impl.dart'
    as _i28;
import '../../data/data_source_impl/remote/toprated_datasource_impl.dart'
    as _i7;
import '../../data/data_source_impl/remote/trailler_datasource_impl.dart'
    as _i24;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i22;
import '../../data/repository_impl/local/fire_store_movie_repository_impl.dart'
    as _i65;
import '../../data/repository_impl/local/login_repository_impl.dart' as _i34;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i13;
import '../../data/repository_impl/remote/categories_repository_impl.dart'
    as _i57;
import '../../data/repository_impl/remote/filter_repository_impl.dart' as _i53;
import '../../data/repository_impl/remote/movie_details_repository_impl.dart'
    as _i32;
import '../../data/repository_impl/remote/popular_repository_impl.dart' as _i71;
import '../../data/repository_impl/remote/rate_repository_impl.dart' as _i38;
import '../../data/repository_impl/remote/search_repository_impl.dart' as _i44;
import '../../data/repository_impl/remote/similer_repository_impl.dart' as _i36;
import '../../data/repository_impl/remote/toprated_repository_impl.dart'
    as _i40;
import '../../data/repository_impl/remote/trailler_repository_impl.dart'
    as _i51;
import '../../data/repository_impl/remote/upcoming_repository_impl.dart'
    as _i60;
import '../../domain/repository_contract/local/fire_store_movie_repository.dart'
    as _i64;
import '../../domain/repository_contract/local/login_repository.dart' as _i33;
import '../../domain/repository_contract/local/register_repository.dart'
    as _i12;
import '../../domain/repository_contract/remote/categories_repository.dart'
    as _i56;
import '../../domain/repository_contract/remote/filter_repository.dart' as _i52;
import '../../domain/repository_contract/remote/movie_details_repository.dart'
    as _i31;
import '../../domain/repository_contract/remote/popular_repository.dart'
    as _i70;
import '../../domain/repository_contract/remote/rating_repository.dart' as _i37;
import '../../domain/repository_contract/remote/search_repository.dart' as _i43;
import '../../domain/repository_contract/remote/similer_repository.dart'
    as _i35;
import '../../domain/repository_contract/remote/toprated_repository.dart'
    as _i39;
import '../../domain/repository_contract/remote/trailler_repository.dart'
    as _i50;
import '../../domain/repository_contract/remote/upcoming_repository.dart'
    as _i59;
import '../../domain/use_cases/Local/fire_store_movie_use_case.dart' as _i72;
import '../../domain/use_cases/Local/login_usecase.dart' as _i55;
import '../../domain/use_cases/Local/register_usecase.dart' as _i18;
import '../../domain/use_cases/remote/category_usecase.dart' as _i69;
import '../../domain/use_cases/remote/filter_usecase.dart' as _i63;
import '../../domain/use_cases/remote/movie_details_usecase.dart' as _i62;
import '../../domain/use_cases/remote/popular_usecase.dart' as _i78;
import '../../domain/use_cases/remote/search_usecase.dart' as _i68;
import '../../domain/use_cases/remote/similer_usecase.dart' as _i45;
import '../../domain/use_cases/remote/toprated_usecase.dart' as _i46;
import '../../domain/use_cases/remote/trailler_usecase.dart' as _i54;
import '../../domain/use_cases/remote/upcoming_usecase.dart' as _i77;
import '../../Presentation/layouts/category_filter/view_model/category_filter_view_model.dart'
    as _i79;
import '../../Presentation/layouts/home/tabs/browse_tab/view_model/browse_view_model.dart'
    as _i76;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i81;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i66;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i80;
import '../../Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart'
    as _i73;
import '../../Presentation/layouts/home/tabs/watch%20list_tab/view_model/watch_list_view_model.dart'
    as _i74;
import '../../Presentation/layouts/login/login_Viewmodel/login_view_model.dart'
    as _i61;
import '../../Presentation/layouts/movie_details/movie_trailler.dart/view_model/trailler_view_model.dart'
    as _i67;
import '../../Presentation/layouts/movie_details/view_model/movie_details_view_model.dart'
    as _i75;
import '../../Presentation/layouts/movie_details/view_model/similer_view_model.dart'
    as _i49;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i58;
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
    gh.factory<_i6.TopRatedDataSource>(
        () => _i7.TopRatedDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i8.FilterDataSource>(
        () => _i9.FilterDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i10.RegisterDataSource>(
        () => _i11.registerDataSourceImpl(gh<_i4.AuthHelper>()));
    gh.factory<_i12.RegisterRepository>(() => _i13.registerRepositoryImpl(
        registerDataSource: gh<_i10.RegisterDataSource>()));
    gh.factory<_i14.MovieDetailsDataSource>(
        () => _i15.MovieDetailsDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i16.LoginDataSource>(
        () => _i17.LoginDataSourceImpl(gh<_i4.AuthHelper>()));
    gh.factory<_i18.RegisterUsecase>(
        () => _i18.RegisterUsecase(gh<_i12.RegisterRepository>()));
    gh.factory<_i19.CategoriesDataSource>(
        () => _i20.CategoriesDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i21.UpcomingDataSorce>(
        () => _i22.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i23.TraillerDataSource>(
        () => _i24.TraillerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i25.RatingDataSource>(
        () => _i26.RatingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i27.SimilerDataSource>(
        () => _i28.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i29.SearchDataSource>(
        () => _i30.SearchDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i31.MovieDetailsReposityory>(() =>
        _i32.MovieDetailsRepositoryImpl(gh<_i14.MovieDetailsDataSource>()));
    gh.factory<_i33.LoginRepository>(
        () => _i34.LoginRepositoryImpl(gh<_i16.LoginDataSource>()));
    gh.factory<_i35.SimilerRepository>(
        () => _i36.SimilerRepositoryImpl(gh<_i27.SimilerDataSource>()));
    gh.factory<_i37.RatingRepository>(
        () => _i38.RatingRepositoryImpl(gh<_i25.RatingDataSource>()));
    gh.factory<_i39.TopRatedRepository>(
        () => _i40.TopRatedRepositoryImpl(gh<_i6.TopRatedDataSource>()));
    gh.factory<_i41.PopularDataSource>(
        () => _i42.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i43.SearchRepository>(
        () => _i44.SearchRepositoryImpl(gh<_i29.SearchDataSource>()));
    gh.factory<_i45.SimilerUseCase>(
        () => _i45.SimilerUseCase(gh<_i35.SimilerRepository>()));
    gh.factory<_i46.TopRatedUseCase>(
        () => _i46.TopRatedUseCase(gh<_i39.TopRatedRepository>()));
    gh.factory<_i47.FireStoreMovieDataSource>(
        () => _i48.FireStoreMovieDateSourceImpl(gh<_i5.FireStoreHelper>()));
    gh.factory<_i49.SimilerHomeTabViewModel>(
        () => _i49.SimilerHomeTabViewModel(gh<_i45.SimilerUseCase>()));
    gh.factory<_i50.TraillerRepository>(
        () => _i51.TraillerRepositoryImpl(gh<_i23.TraillerDataSource>()));
    gh.factory<_i52.FilterRepository>(
        () => _i53.FilterRepositoryImpl(gh<_i8.FilterDataSource>()));
    gh.factory<_i54.TraillerUseCase>(
        () => _i54.TraillerUseCase(gh<_i50.TraillerRepository>()));
    gh.factory<_i55.LoginUsecase>(
        () => _i55.LoginUsecase(gh<_i33.LoginRepository>()));
    gh.factory<_i56.CategoriesRepository>(
        () => _i57.CategoriesRepositoryImpl(gh<_i19.CategoriesDataSource>()));
    gh.factory<_i58.RegisterViewModel>(
        () => _i58.RegisterViewModel(gh<_i18.RegisterUsecase>()));
    gh.factory<_i59.UpcomingRepository>(
        () => _i60.UpcomingRepositoryImpl(gh<_i21.UpcomingDataSorce>()));
    gh.factory<_i61.loginViewModel>(
        () => _i61.loginViewModel(gh<_i55.LoginUsecase>()));
    gh.factory<_i62.MovieDetailsUseCase>(
        () => _i62.MovieDetailsUseCase(gh<_i31.MovieDetailsReposityory>()));
    gh.factory<_i63.FilterUseCase>(
        () => _i63.FilterUseCase(gh<_i52.FilterRepository>()));
    gh.factory<_i64.FireStoreMovieRepository>(() =>
        _i65.FireStoreMovieRepositoryImpl(gh<_i47.FireStoreMovieDataSource>()));
    gh.factory<_i66.TopRatedHomeTabViewModel>(
        () => _i66.TopRatedHomeTabViewModel(gh<_i46.TopRatedUseCase>()));
    gh.factory<_i67.TraillerViewMode>(
        () => _i67.TraillerViewMode(gh<_i54.TraillerUseCase>()));
    gh.factory<_i68.SearchUseCase>(
        () => _i68.SearchUseCase(gh<_i43.SearchRepository>()));
    gh.factory<_i69.CategoryUseCase>(
        () => _i69.CategoryUseCase(gh<_i56.CategoriesRepository>()));
    gh.factory<_i70.PopularRepository>(
        () => _i71.PopularRepositoryImpl(gh<_i41.PopularDataSource>()));
    gh.factory<_i72.FireStoreMovieUseCase>(
        () => _i72.FireStoreMovieUseCase(gh<_i64.FireStoreMovieRepository>()));
    gh.factory<_i73.SearchTabViewModel>(
        () => _i73.SearchTabViewModel(gh<_i68.SearchUseCase>()));
    gh.factory<_i74.WatchListTabViewModel>(
        () => _i74.WatchListTabViewModel(gh<_i72.FireStoreMovieUseCase>()));
    gh.factory<_i75.MovieDetailsHomeTabViewModel>(
        () => _i75.MovieDetailsHomeTabViewModel(
              gh<_i62.MovieDetailsUseCase>(),
              gh<_i37.RatingRepository>(),
            ));
    gh.factory<_i76.BrowseTabViewModel>(
        () => _i76.BrowseTabViewModel(gh<_i69.CategoryUseCase>()));
    gh.factory<_i77.UpcomingUseCase>(
        () => _i77.UpcomingUseCase(gh<_i59.UpcomingRepository>()));
    gh.factory<_i78.PoplularUseCase>(
        () => _i78.PoplularUseCase(gh<_i70.PopularRepository>()));
    gh.factory<_i79.CategoryFilterViewModel>(
        () => _i79.CategoryFilterViewModel(gh<_i63.FilterUseCase>()));
    gh.factory<_i80.UpcomingHomeTabViewModel>(
        () => _i80.UpcomingHomeTabViewModel(gh<_i77.UpcomingUseCase>()));
    gh.factory<_i81.PopularHomeTabViewModel>(
        () => _i81.PopularHomeTabViewModel(gh<_i78.PoplularUseCase>()));
    return this;
  }
}
