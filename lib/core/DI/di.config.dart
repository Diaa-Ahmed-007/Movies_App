// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data_source_contract/remote/popular_movie_datasource.dart'
    as _i4;
import '../../data/data_source_impl/remote/popular_movie_datasource_impl.dart'
    as _i5;
import '../../data/repository_impl/popular_movies_repository_impl.dart' as _i7;
import '../../domain/repository_contract/popular_movie_repository_contract.dart'
    as _i6;
import '../../domain/use_cases/popular_usecase.dart' as _i8;
import '../../Presentation/layouts/home/tabs/home_tab/view_model/home_tab_view_model.dart'
    as _i9;
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
    gh.factory<_i4.PopularMovieDataSource>(
        () => _i5.PopularMovieDataSourceImpl(apiManger: gh<_i3.ApiManger>()));
    gh.factory<_i6.PopularMovieRepository>(() =>
        _i7.PopularMoviesRepositoryImpl(gh<_i4.PopularMovieDataSource>()));
    gh.factory<_i8.PopularUseCase>(
        () => _i8.PopularUseCase(gh<_i6.PopularMovieRepository>()));
    gh.factory<_i9.HomeTabViewModel>(
        () => _i9.HomeTabViewModel(gh<_i8.PopularUseCase>()));
    return this;
  }
}
