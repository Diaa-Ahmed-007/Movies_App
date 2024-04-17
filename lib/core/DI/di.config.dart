// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/local/register_data_source.dart' as _i7;
import '../../data/data_source_contract/remote/movieDetails_datasource.dart'
    as _i11;
import '../../data/data_source_contract/remote/popular_datasource.dart' as _i26;
import '../../data/data_source_contract/remote/search_datasource.dart' as _i18;
import '../../data/data_source_contract/remote/similer_datasource.dart' as _i16;
import '../../data/data_source_contract/remote/toprated_datasource.dart' as _i5;
import '../../data/data_source_contract/remote/upcoming_datasource.dart'
    as _i14;
import '../../data/data_source_contract/local/login_data_source.dart' as _i8;
import '../../data/data_source_contract/local/register_data_source.dart' as _i4;
import '../../data/data_source_impl/local/login_data_source_impl.dart' as _i9;
import '../../data/data_source_impl/local/register_data_source_impl.dart'
    as _i8;
import '../../data/data_source_impl/remote/movie_details_datasource_impl.dart'
    as _i12;
import '../../data/data_source_impl/remote/popular_datasource_impl.dart'
    as _i27;
import '../../data/data_source_impl/remote/search_datasource_impl.dart' as _i19;
import '../../data/data_source_impl/remote/similer_datasource_impl.dart'
    as _i17;
import '../../data/data_source_impl/remote/toprated_datasource_impl.dart'
    as _i6;
import '../../data/data_source_impl/remote/upcoming_datasource_impl.dart'
    as _i15;
import '../../data/repository_impl/local/register_repository_impl.dart' as _i10;
import '../../data/repository_impl/remote/movie_details_repository_impl.dart'
    as _i21;
import '../../data/repository_impl/remote/popular_repository_impl.dart' as _i40;
import '../../data/repository_impl/remote/search_repository_impl.dart' as _i29;
import '../../data/repository_impl/remote/similer_repository_impl.dart' as _i23;
import '../../data/repository_impl/remote/toprated_repository_impl.dart'
    as _i25;
import '../../data/repository_impl/remote/upcoming_repository_impl.dart'
    as _i35;
import '../../domain/repository_contract/local/register_repository.dart' as _i9;
import '../../domain/repository_contract/remote/movie_details_repository.dart'
    as _i20;
import '../../domain/repository_contract/remote/popular_repository.dart'
    as _i39;
import '../../domain/repository_contract/remote/search_repository.dart' as _i28;
import '../../domain/repository_contract/remote/similer_repository.dart'
    as _i22;
import '../../domain/repository_contract/remote/toprated_repository.dart'
    as _i24;
import '../../domain/repository_contract/remote/upcoming_repository.dart'
    as _i34;
import '../../domain/use_cases/Local/register_usecase.dart' as _i13;
import '../../domain/use_cases/remote/movie_details_usecase.dart' as _i36;
import '../../domain/use_cases/remote/popular_usecase.dart' as _i44;
import '../../domain/use_cases/remote/search_usecase.dart' as _i38;
import '../../domain/use_cases/remote/similer_usecase.dart' as _i30;
import '../../domain/use_cases/remote/toprated_usecase.dart' as _i31;
import '../../domain/use_cases/remote/upcoming_usecase.dart' as _i43;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/popular_home_tab_view_model.dart'
    as _i46;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/toprated_home_tab_view_model.dart'
    as _i37;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/upcoming_home_tab_view_model.dart'
    as _i45;
import '../../Presentation/layouts/home/tabs/search_tab/view_model/search_view_model.dart'
    as _i41;
import '../../Presentation/layouts/movie_details/view_model/movie_details_view_model.dart'
    as _i42;
import '../../Presentation/layouts/movie_details/view_model/similer_view_model.dart'
    as _i32;
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
    as _i9;
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
    gh.factory<_i13.RegisterUsecase>(
        () => _i13.RegisterUsecase(gh<_i9.RegisterRepository>()));
    gh.factory<_i14.UpcomingDataSorce>(
        () => _i15.UpcomingDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i16.SimilerDataSource>(
        () => _i17.SimilerDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i18.SearchDataSource>(
        () => _i19.SearchDataSourceImpl(gh<_i3.ApiManger>()));
    gh.factory<_i20.MovieDetailsReposityory>(() =>
        _i21.MovieDetailsRepositoryImpl(gh<_i11.MovieDetailsDataSource>()));
    gh.factory<_i22.SimilerRepository>(
        () => _i23.SimilerRepositoryImpl(gh<_i16.SimilerDataSource>()));
    gh.factory<_i24.TopRatedRepository>(
        () => _i25.TopRatedRepositoryImpl(gh<_i5.TopRatedDataSource>()));
    gh.factory<_i26.PopularDataSource>(
        () => _i27.PopularDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i28.SearchRepository>(
        () => _i29.SearchRepositoryImpl(gh<_i18.SearchDataSource>()));
    gh.factory<_i30.SimilerUseCase>(
        () => _i30.SimilerUseCase(gh<_i22.SimilerRepository>()));
    gh.factory<_i31.TopRatedUseCase>(
        () => _i31.TopRatedUseCase(gh<_i24.TopRatedRepository>()));
    gh.factory<_i32.SimilerHomeTabViewModel>(
        () => _i32.SimilerHomeTabViewModel(gh<_i30.SimilerUseCase>()));
    gh.factory<_i33.registerViewModel>(
        () => _i33.registerViewModel(gh<_i13.RegisterUsecase>()));
    gh.factory<_i34.UpcomingRepository>(
        () => _i35.UpcomingRepositoryImpl(gh<_i14.UpcomingDataSorce>()));
    gh.factory<_i36.MovieDetailsUseCase>(
        () => _i36.MovieDetailsUseCase(gh<_i20.MovieDetailsReposityory>()));
    gh.factory<_i37.TopRatedHomeTabViewModel>(
        () => _i37.TopRatedHomeTabViewModel(gh<_i31.TopRatedUseCase>()));
    gh.factory<_i38.SearchUseCase>(
        () => _i38.SearchUseCase(gh<_i28.SearchRepository>()));
    gh.factory<_i39.PopularRepository>(
        () => _i40.PopularRepositoryImpl(gh<_i26.PopularDataSource>()));
    gh.factory<_i41.SearchTabViewModel>(
        () => _i41.SearchTabViewModel(gh<_i38.SearchUseCase>()));
    gh.factory<_i42.MovieDetailsHomeTabViewModel>(() =>
        _i42.MovieDetailsHomeTabViewModel(gh<_i36.MovieDetailsUseCase>()));
    gh.factory<_i43.UpcomingUseCase>(
        () => _i43.UpcomingUseCase(gh<_i34.UpcomingRepository>()));
    gh.factory<_i44.PoplularUseCase>(
        () => _i44.PoplularUseCase(gh<_i39.PopularRepository>()));
    gh.factory<_i45.UpcomingHomeTabViewModel>(
        () => _i45.UpcomingHomeTabViewModel(gh<_i43.UpcomingUseCase>()));
    gh.factory<_i46.PopularHomeTabViewModel>(
        () => _i46.PopularHomeTabViewModel(gh<_i44.PoplularUseCase>()));
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
