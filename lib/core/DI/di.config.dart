// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/login_data_source.dart' as _i13;
import '../../data/data_source_contract/local/register_data_source.dart' as _i7;
import '../../data/data_source_contract/remote/categories_datasource.dart'
    as _i16;
import '../../data/data_source_contract/remote/movieDetails_datasource.dart'
    as _i11;
import '../../data/data_source_contract/remote/popular_datasource.dart' as _i32;
import '../../data/data_source_contract/remote/search_datasource.dart' as _i22;
import '../../data/data_source_contract/remote/similer_datasource.dart' as _i20;
import '../../data/data_source_contract/remote/toprated_datasource.dart' as _i5;
import '../../data/data_source_contract/remote/upcoming_datasource.dart'
    as _i18;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i14;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i8;
import '../../data/data_source_impl/remote/categories_datasource_impl.dart'
    as _i17;
import '../../data/data_source_impl/remote/movie_details_datasource_impl.dart'
    as _i12;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart'
    as _i33;
import '../../data/data_source_impl/remote/search_datasource_impl.dart' as _i23;
import '../../data/data_source_impl/remote/similer_datasource_impl.dart'
    as _i21;
import '../../data/data_source_impl/remote/toprated_datasource_impl.dart'
    as _i6;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i19;
import '../../data/repository_impl/local/login_repository_impl.dart' as _i27;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i10;
import '../../data/repository_impl/remote/categories_repository_impl.dart'
    as _i42;
import '../../data/repository_impl/remote/movie_details_repository_impl.dart'
    as _i25;
import '../../data/repository_impl/remote/popular_repository_impl.dart' as _i52;
import '../../data/repository_impl/remote/search_repository_impl.dart' as _i35;
import '../../data/repository_impl/remote/similer_repository_impl.dart' as _i29;
import '../../data/repository_impl/remote/toprated_repository_impl.dart'
    as _i31;
import '../../data/repository_impl/remote/upcoming_repository_impl.dart'
    as _i45;
import '../../domain/repository_contract/local/login_repository.dart' as _i26;
import '../../domain/repository_contract/local/register_repository.dart' as _i9;
import '../../domain/repository_contract/remote/categories_repository.dart'
    as _i41;
import '../../domain/repository_contract/remote/movie_details_repository.dart'
    as _i24;
import '../../domain/repository_contract/remote/popular_repository.dart'
    as _i51;
import '../../domain/repository_contract/remote/search_repository.dart' as _i34;
import '../../domain/repository_contract/remote/similer_repository.dart'
    as _i28;
import '../../domain/repository_contract/remote/toprated_repository.dart'
    as _i30;
import '../../domain/repository_contract/remote/upcoming_repository.dart'
    as _i44;
import '../../domain/use_cases/Local/login_usecase.dart' as _i40;
import '../../domain/use_cases/Local/register_usecase.dart' as _i15;
import '../../domain/use_cases/remote/category_usecase.dart' as _i50;
import '../../domain/use_cases/remote/movie_details_usecase.dart' as _i47;
import '../../domain/use_cases/remote/popular_usecase.dart' as _i57;
import '../../domain/use_cases/remote/search_usecase.dart' as _i49;
import '../../domain/use_cases/remote/similer_usecase.dart' as _i36;
import '../../domain/use_cases/remote/toprated_usecase.dart' as _i37;
import '../../domain/use_cases/remote/upcoming_usecase.dart' as _i56;
import '../../Presentation/cubit/auth&firestore_viewmodel.dart' as _i38;
import '../../Presentation/layouts/home/tabs/browse_tab/view_model/browse_view_model.dart'
    as _i55;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i59;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i48;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i58;
import '../../Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart'
    as _i53;
import '../../Presentation/layouts/login/login_Viewmodel/login_view_model.dart'
    as _i46;
import '../../Presentation/layouts/movie_details/view_model/movie_details_view_model.dart'
    as _i54;
import '../../Presentation/layouts/movie_details/view_model/similer_view_model.dart'
    as _i39;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i43;
import '../api/api_manger.dart' as _i3;
import '../firebase/auth_helper.dart' as _i4;

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
    gh.factory<_i5.TopRatedDataSource>(
        () => _i6.TopRatedDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i7.RegisterDataSource>(
        () => _i8.registerDataSourceImpl(gh<_i4.AuthHelper>()));
    gh.factory<_i9.RegisterRepository>(() => _i10.registerRepositoryImpl(
        registerDataSource: gh<_i7.RegisterDataSource>()));
    gh.factory<_i11.MovieDetailsDataSource>(
        () => _i12.MovieDetailsDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i13.LoginDataSource>(
        () => _i14.LoginDataSourceImpl(gh<_i4.AuthHelper>()));
    gh.factory<_i15.RegisterUsecase>(
        () => _i15.RegisterUsecase(gh<_i9.RegisterRepository>()));
    gh.factory<_i16.CategoriesDataSource>(
        () => _i17.CategoriesDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i18.UpcomingDataSorce>(
        () => _i19.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i20.SimilerDataSource>(
        () => _i21.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i22.SearchDataSource>(
        () => _i23.SearchDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i24.MovieDetailsReposityory>(() =>
        _i25.MovieDetailsRepositoryImpl(gh<_i11.MovieDetailsDataSource>()));
    gh.factory<_i26.LoginRepository>(
        () => _i27.LoginRepositoryImpl(gh<_i13.LoginDataSource>()));
    gh.factory<_i28.SimilerRepository>(
        () => _i29.SimilerRepositoryImpl(gh<_i20.SimilerDataSource>()));
    gh.factory<_i30.TopRatedRepository>(
        () => _i31.TopRatedRepositoryImpl(gh<_i5.TopRatedDataSource>()));
    gh.factory<_i32.PopularDataSource>(
        () => _i33.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i34.SearchRepository>(
        () => _i35.SearchRepositoryImpl(gh<_i22.SearchDataSource>()));
    gh.factory<_i36.SimilerUseCase>(
        () => _i36.SimilerUseCase(gh<_i28.SimilerRepository>()));
    gh.factory<_i37.TopRatedUseCase>(
        () => _i37.TopRatedUseCase(gh<_i30.TopRatedRepository>()));
    gh.factory<_i38.AuthAndFirestoreViewmodel>(
        () => _i38.AuthAndFirestoreViewmodel(gh<_i38.AuthAndFirestoreState>()));
    gh.factory<_i39.SimilerHomeTabViewModel>(
        () => _i39.SimilerHomeTabViewModel(gh<_i36.SimilerUseCase>()));
    gh.factory<_i40.LoginUsecase>(
        () => _i40.LoginUsecase(gh<_i26.LoginRepository>()));
    gh.factory<_i41.CategoriesRepository>(
        () => _i42.CategoriesRepositoryImpl(gh<_i16.CategoriesDataSource>()));
    gh.factory<_i43.registerViewModel>(
        () => _i43.registerViewModel(gh<_i15.RegisterUsecase>()));
    gh.factory<_i44.UpcomingRepository>(
        () => _i45.UpcomingRepositoryImpl(gh<_i18.UpcomingDataSorce>()));
    gh.factory<_i46.loginViewModel>(
        () => _i46.loginViewModel(gh<_i40.LoginUsecase>()));
    gh.factory<_i47.MovieDetailsUseCase>(
        () => _i47.MovieDetailsUseCase(gh<_i24.MovieDetailsReposityory>()));
    gh.factory<_i48.TopRatedHomeTabViewModel>(
        () => _i48.TopRatedHomeTabViewModel(gh<_i37.TopRatedUseCase>()));
    gh.factory<_i49.SearchUseCase>(
        () => _i49.SearchUseCase(gh<_i34.SearchRepository>()));
    gh.factory<_i50.CategoryUseCase>(
        () => _i50.CategoryUseCase(gh<_i41.CategoriesRepository>()));
    gh.factory<_i51.PopularRepository>(
        () => _i52.PopularRepositoryImpl(gh<_i32.PopularDataSource>()));
    gh.factory<_i53.SearchTabViewModel>(
        () => _i53.SearchTabViewModel(gh<_i49.SearchUseCase>()));
    gh.factory<_i54.MovieDetailsHomeTabViewModel>(() =>
        _i54.MovieDetailsHomeTabViewModel(gh<_i47.MovieDetailsUseCase>()));
    gh.factory<_i55.BrowseTabViewModel>(
        () => _i55.BrowseTabViewModel(gh<_i50.CategoryUseCase>()));
    gh.factory<_i56.UpcomingUseCase>(
        () => _i56.UpcomingUseCase(gh<_i44.UpcomingRepository>()));
    gh.factory<_i57.PoplularUseCase>(
        () => _i57.PoplularUseCase(gh<_i51.PopularRepository>()));
    gh.factory<_i58.UpcomingHomeTabViewModel>(
        () => _i58.UpcomingHomeTabViewModel(gh<_i56.UpcomingUseCase>()));
    gh.factory<_i59.PopularHomeTabViewModel>(
        () => _i59.PopularHomeTabViewModel(gh<_i57.PoplularUseCase>()));
    return this;
  }
}
