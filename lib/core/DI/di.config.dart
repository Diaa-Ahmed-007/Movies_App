// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/login_data_source.dart' as _i16;
import '../../data/data_source_contract/local/register_data_source.dart'
    as _i10;
import '../../data/data_source_contract/remote/categories_datasource.dart'
    as _i19;
import '../../data/data_source_contract/remote/filter_datasource.dart' as _i8;
import '../../data/data_source_contract/remote/movieDetails_datasource.dart'
    as _i14;
import '../../data/data_source_contract/remote/popular_datasource.dart' as _i35;
import '../../data/data_source_contract/remote/search_datasource.dart' as _i25;
import '../../data/data_source_contract/remote/similer_datasource.dart' as _i23;
import '../../data/data_source_contract/remote/toprated_datasource.dart' as _i6;
import '../../data/data_source_contract/remote/upcoming_datasource.dart'
    as _i21;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i17;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i11;
import '../../data/data_source_impl/remote/categories_datasource_impl.dart'
    as _i20;
import '../../data/data_source_impl/remote/filter_datasource_impl.dart' as _i9;
import '../../data/data_source_impl/remote/movie_details_datasource_impl.dart'
    as _i15;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart'
    as _i36;
import '../../data/data_source_impl/remote/search_datasource_impl.dart' as _i26;
import '../../data/data_source_impl/remote/similer_datasource_impl.dart'
    as _i24;
import '../../data/data_source_impl/remote/toprated_datasource_impl.dart'
    as _i7;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i22;
import '../../data/repository_impl/local/login_repository_impl.dart' as _i30;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i13;
import '../../data/repository_impl/remote/categories_repository_impl.dart'
    as _i46;
import '../../data/repository_impl/remote/filter_repository_impl.dart' as _i43;
import '../../data/repository_impl/remote/movie_details_repository_impl.dart'
    as _i28;
import '../../data/repository_impl/remote/popular_repository_impl.dart' as _i57;
import '../../data/repository_impl/remote/search_repository_impl.dart' as _i38;
import '../../data/repository_impl/remote/similer_repository_impl.dart' as _i32;
import '../../data/repository_impl/remote/toprated_repository_impl.dart'
    as _i34;
import '../../data/repository_impl/remote/upcoming_repository_impl.dart'
    as _i49;
import '../../domain/repository_contract/local/login_repository.dart' as _i29;
import '../../domain/repository_contract/local/register_repository.dart'
    as _i12;
import '../../domain/repository_contract/remote/categories_repository.dart'
    as _i45;
import '../../domain/repository_contract/remote/filter_repository.dart' as _i42;
import '../../domain/repository_contract/remote/movie_details_repository.dart'
    as _i27;
import '../../domain/repository_contract/remote/popular_repository.dart'
    as _i56;
import '../../domain/repository_contract/remote/search_repository.dart' as _i37;
import '../../domain/repository_contract/remote/similer_repository.dart'
    as _i31;
import '../../domain/repository_contract/remote/toprated_repository.dart'
    as _i33;
import '../../domain/repository_contract/remote/upcoming_repository.dart'
    as _i48;
import '../../domain/use_cases/Local/login_usecase.dart' as _i44;
import '../../domain/use_cases/Local/register_usecase.dart' as _i18;
import '../../domain/use_cases/remote/category_usecase.dart' as _i55;
import '../../domain/use_cases/remote/filter_usecase.dart' as _i52;
import '../../domain/use_cases/remote/movie_details_usecase.dart' as _i51;
import '../../domain/use_cases/remote/popular_usecase.dart' as _i62;
import '../../domain/use_cases/remote/search_usecase.dart' as _i54;
import '../../domain/use_cases/remote/similer_usecase.dart' as _i39;
import '../../domain/use_cases/remote/toprated_usecase.dart' as _i40;
import '../../domain/use_cases/remote/upcoming_usecase.dart' as _i61;
import '../../Presentation/layouts/category_filter/view_model/category_filter_view_model.dart'
    as _i63;
import '../../Presentation/layouts/home/tabs/browse_tab/view_model/browse_view_model.dart'
    as _i60;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i65;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i53;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i64;
import '../../Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart'
    as _i58;
import '../../Presentation/layouts/login/login_Viewmodel/login_view_model.dart'
    as _i50;
import '../../Presentation/layouts/movie_details/view_model/movie_details_view_model.dart'
    as _i59;
import '../../Presentation/layouts/movie_details/view_model/similer_view_model.dart'
    as _i41;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i47;
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
    gh.factory<_i23.SimilerDataSource>(
        () => _i24.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i25.SearchDataSource>(
        () => _i26.SearchDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i27.MovieDetailsReposityory>(() =>
        _i28.MovieDetailsRepositoryImpl(gh<_i14.MovieDetailsDataSource>()));
    gh.factory<_i29.LoginRepository>(
        () => _i30.LoginRepositoryImpl(gh<_i16.LoginDataSource>()));
    gh.factory<_i31.SimilerRepository>(
        () => _i32.SimilerRepositoryImpl(gh<_i23.SimilerDataSource>()));
    gh.factory<_i33.TopRatedRepository>(
        () => _i34.TopRatedRepositoryImpl(gh<_i6.TopRatedDataSource>()));
    gh.factory<_i35.PopularDataSource>(
        () => _i36.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i37.SearchRepository>(
        () => _i38.SearchRepositoryImpl(gh<_i25.SearchDataSource>()));
    gh.factory<_i39.SimilerUseCase>(
        () => _i39.SimilerUseCase(gh<_i31.SimilerRepository>()));
    gh.factory<_i40.TopRatedUseCase>(
        () => _i40.TopRatedUseCase(gh<_i33.TopRatedRepository>()));
    gh.factory<_i41.SimilerHomeTabViewModel>(
        () => _i41.SimilerHomeTabViewModel(gh<_i39.SimilerUseCase>()));
    gh.factory<_i42.FilterRepository>(
        () => _i43.FilterRepositoryImpl(gh<_i8.FilterDataSource>()));
    gh.factory<_i44.LoginUsecase>(
        () => _i44.LoginUsecase(gh<_i29.LoginRepository>()));
    gh.factory<_i45.CategoriesRepository>(
        () => _i46.CategoriesRepositoryImpl(gh<_i19.CategoriesDataSource>()));
    gh.factory<_i47.RegisterViewModel>(
        () => _i47.RegisterViewModel(gh<_i18.RegisterUsecase>()));
    gh.factory<_i48.UpcomingRepository>(
        () => _i49.UpcomingRepositoryImpl(gh<_i21.UpcomingDataSorce>()));
    gh.factory<_i50.loginViewModel>(
        () => _i50.loginViewModel(gh<_i44.LoginUsecase>()));
    gh.factory<_i51.MovieDetailsUseCase>(
        () => _i51.MovieDetailsUseCase(gh<_i27.MovieDetailsReposityory>()));
    gh.factory<_i52.FilterUseCase>(
        () => _i52.FilterUseCase(gh<_i42.FilterRepository>()));
    gh.factory<_i53.TopRatedHomeTabViewModel>(
        () => _i53.TopRatedHomeTabViewModel(gh<_i40.TopRatedUseCase>()));
    gh.factory<_i54.SearchUseCase>(
        () => _i54.SearchUseCase(gh<_i37.SearchRepository>()));
    gh.factory<_i55.CategoryUseCase>(
        () => _i55.CategoryUseCase(gh<_i45.CategoriesRepository>()));
    gh.factory<_i56.PopularRepository>(
        () => _i57.PopularRepositoryImpl(gh<_i35.PopularDataSource>()));
    gh.factory<_i58.SearchTabViewModel>(
        () => _i58.SearchTabViewModel(gh<_i54.SearchUseCase>()));
    gh.factory<_i59.MovieDetailsHomeTabViewModel>(() =>
        _i59.MovieDetailsHomeTabViewModel(gh<_i51.MovieDetailsUseCase>()));
    gh.factory<_i60.BrowseTabViewModel>(
        () => _i60.BrowseTabViewModel(gh<_i55.CategoryUseCase>()));
    gh.factory<_i61.UpcomingUseCase>(
        () => _i61.UpcomingUseCase(gh<_i48.UpcomingRepository>()));
    gh.factory<_i62.PoplularUseCase>(
        () => _i62.PoplularUseCase(gh<_i56.PopularRepository>()));
    gh.factory<_i63.CategoryFilterViewModel>(
        () => _i63.CategoryFilterViewModel(gh<_i52.FilterUseCase>()));
    gh.factory<_i64.UpcomingHomeTabViewModel>(
        () => _i64.UpcomingHomeTabViewModel(gh<_i61.UpcomingUseCase>()));
    gh.factory<_i65.PopularHomeTabViewModel>(
        () => _i65.PopularHomeTabViewModel(gh<_i62.PoplularUseCase>()));
    return this;
  }
}
