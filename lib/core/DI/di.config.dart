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
import '../../data/data_source_contract/remote/movieDetails_datasource.dart'
    as _i11;
import '../../data/data_source_contract/remote/popular_datasource.dart' as _i30;
import '../../data/data_source_contract/remote/search_datasource.dart' as _i20;
import '../../data/data_source_contract/remote/similer_datasource.dart' as _i18;
import '../../data/data_source_contract/remote/toprated_datasource.dart' as _i5;
import '../../data/data_source_contract/remote/upcoming_datasource.dart'
    as _i16;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i14;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i8;
import '../../data/data_source_impl/remote/movie_details_datasource_impl.dart'
    as _i12;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart'
    as _i31;
import '../../data/data_source_impl/remote/search_datasource_impl.dart' as _i21;
import '../../data/data_source_impl/remote/similer_datasource_impl.dart'
    as _i19;
import '../../data/data_source_impl/remote/toprated_datasource_impl.dart'
    as _i6;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i17;
import '../../data/repository_impl/local/login_repository_impl.dart' as _i25;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i10;
import '../../data/repository_impl/remote/movie_details_repository_impl.dart'
    as _i23;
import '../../data/repository_impl/remote/popular_repository_impl.dart' as _i47;
import '../../data/repository_impl/remote/search_repository_impl.dart' as _i33;
import '../../data/repository_impl/remote/similer_repository_impl.dart' as _i27;
import '../../data/repository_impl/remote/toprated_repository_impl.dart'
    as _i29;
import '../../data/repository_impl/remote/upcoming_repository_impl.dart'
    as _i41;
import '../../domain/repository_contract/local/login_repository.dart' as _i24;
import '../../domain/repository_contract/local/register_repository.dart' as _i9;
import '../../domain/repository_contract/remote/movie_details_repository.dart'
    as _i22;
import '../../domain/repository_contract/remote/popular_repository.dart'
    as _i46;
import '../../domain/repository_contract/remote/search_repository.dart' as _i32;
import '../../domain/repository_contract/remote/similer_repository.dart'
    as _i26;
import '../../domain/repository_contract/remote/toprated_repository.dart'
    as _i28;
import '../../domain/repository_contract/remote/upcoming_repository.dart'
    as _i40;
import '../../domain/use_cases/Local/login_usecase.dart' as _i38;
import '../../domain/use_cases/Local/register_usecase.dart' as _i15;
import '../../domain/use_cases/remote/movie_details_usecase.dart' as _i43;
import '../../domain/use_cases/remote/popular_usecase.dart' as _i51;
import '../../domain/use_cases/remote/search_usecase.dart' as _i45;
import '../../domain/use_cases/remote/similer_usecase.dart' as _i34;
import '../../domain/use_cases/remote/toprated_usecase.dart' as _i35;
import '../../domain/use_cases/remote/upcoming_usecase.dart' as _i50;
import '../../Presentation/cubit/auth&firestore_viewmodel.dart' as _i36;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i53;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i44;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i52;
import '../../Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart'
    as _i48;
import '../../Presentation/layouts/login/login_Viewmodel/login_view_model.dart'
    as _i42;
import '../../Presentation/layouts/movie_details/view_model/movie_details_view_model.dart'
    as _i49;
import '../../Presentation/layouts/movie_details/view_model/similer_view_model.dart'
    as _i37;
import '../../Presentation/layouts/register/register_viewmodel/register_view_model.dart'
    as _i39;
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
    gh.factory<_i16.UpcomingDataSorce>(
        () => _i17.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i18.SimilerDataSource>(
        () => _i19.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i20.SearchDataSource>(
        () => _i21.SearchDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i22.MovieDetailsReposityory>(() =>
        _i23.MovieDetailsRepositoryImpl(gh<_i11.MovieDetailsDataSource>()));
    gh.factory<_i24.LoginRepository>(
        () => _i25.LoginRepositoryImpl(gh<_i13.LoginDataSource>()));
    gh.factory<_i26.SimilerRepository>(
        () => _i27.SimilerRepositoryImpl(gh<_i18.SimilerDataSource>()));
    gh.factory<_i28.TopRatedRepository>(
        () => _i29.TopRatedRepositoryImpl(gh<_i5.TopRatedDataSource>()));
    gh.factory<_i30.PopularDataSource>(
        () => _i31.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i32.SearchRepository>(
        () => _i33.SearchRepositoryImpl(gh<_i20.SearchDataSource>()));
    gh.factory<_i34.SimilerUseCase>(
        () => _i34.SimilerUseCase(gh<_i26.SimilerRepository>()));
    gh.factory<_i35.TopRatedUseCase>(
        () => _i35.TopRatedUseCase(gh<_i28.TopRatedRepository>()));
    gh.factory<_i36.AuthAndFirestoreViewmodel>(
        () => _i36.AuthAndFirestoreViewmodel(gh<_i36.AuthAndFirestoreState>()));
    gh.factory<_i37.SimilerHomeTabViewModel>(
        () => _i37.SimilerHomeTabViewModel(gh<_i34.SimilerUseCase>()));
    gh.factory<_i38.LoginUsecase>(
        () => _i38.LoginUsecase(gh<_i24.LoginRepository>()));
    gh.factory<_i39.registerViewModel>(
        () => _i39.registerViewModel(gh<_i15.RegisterUsecase>()));
    gh.factory<_i40.UpcomingRepository>(
        () => _i41.UpcomingRepositoryImpl(gh<_i16.UpcomingDataSorce>()));
    gh.factory<_i42.loginViewModel>(
        () => _i42.loginViewModel(gh<_i38.LoginUsecase>()));
    gh.factory<_i43.MovieDetailsUseCase>(
        () => _i43.MovieDetailsUseCase(gh<_i22.MovieDetailsReposityory>()));
    gh.factory<_i44.TopRatedHomeTabViewModel>(
        () => _i44.TopRatedHomeTabViewModel(gh<_i35.TopRatedUseCase>()));
    gh.factory<_i45.SearchUseCase>(
        () => _i45.SearchUseCase(gh<_i32.SearchRepository>()));
    gh.factory<_i46.PopularRepository>(
        () => _i47.PopularRepositoryImpl(gh<_i30.PopularDataSource>()));
    gh.factory<_i48.SearchTabViewModel>(
        () => _i48.SearchTabViewModel(gh<_i45.SearchUseCase>()));
    gh.factory<_i49.MovieDetailsHomeTabViewModel>(() =>
        _i49.MovieDetailsHomeTabViewModel(gh<_i43.MovieDetailsUseCase>()));
    gh.factory<_i50.UpcomingUseCase>(
        () => _i50.UpcomingUseCase(gh<_i40.UpcomingRepository>()));
    gh.factory<_i51.PoplularUseCase>(
        () => _i51.PoplularUseCase(gh<_i46.PopularRepository>()));
    gh.factory<_i52.UpcomingHomeTabViewModel>(
        () => _i52.UpcomingHomeTabViewModel(gh<_i50.UpcomingUseCase>()));
    gh.factory<_i53.PopularHomeTabViewModel>(
        () => _i53.PopularHomeTabViewModel(gh<_i51.PoplularUseCase>()));
    return this;
  }
}
