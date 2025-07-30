// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/Auth/api_layer/api_service/api_service.dart' as _i824;
import '../../features/Auth/api_layer/data_source_impl/auth_data_source_impl.dart'
    as _i314;
import '../../features/Auth/api_layer/dio_module/dio_module.dart' as _i290;
import '../../features/Auth/data/data_source/auth_data_source.dart' as _i34;
import '../../features/Auth/data/repo/auth_repo_impl.dart' as _i218;
import '../../features/Auth/domain/repo/auth_repo.dart' as _i327;
import '../../features/Auth/domain/use_case/forget_password_use_case.dart'
    as _i957;
import '../../features/Auth/domain/use_case/login_use_case.dart' as _i476;
import '../../features/Auth/domain/use_case/register_use_case.dart' as _i670;
import '../../features/Auth/domain/use_case/reset_password_use_case.dart'
    as _i930;
import '../../features/Auth/domain/use_case/verfiy_password.dart' as _i545;
import '../../features/Auth/presentation/controller/forget_password_cubit/forget_password_cubit.dart'
    as _i696;
import '../../features/Auth/presentation/controller/login_cubit/login_cubit.dart'
    as _i130;
import '../../features/Auth/presentation/controller/register_cubit/register_cubit.dart'
    as _i263;
import '../../features/exam/data/data_source/explore_data_source.dart' as _i173;
import '../../features/exam/data/data_source/explore_data_source_impl.dart'
    as _i313;
import '../../features/exam/data/repo/explore_repo_impl.dart' as _i1051;
import '../../features/exam/domain/repos/explore_repo.dart' as _i804;
import '../../features/exam/domain/use_case/exom_on_subject_use_case.dart'
    as _i621;
import '../../features/exam/domain/use_case/get_all_subjects_use_case.dart'
    as _i397;
import '../../features/exam/domain/use_case/questions_by_exam_use_case.dart'
    as _i385;
import '../../features/exam/presentation/controller/exam_cubit/explore_cubit.dart'
    as _i815;
import 'modules/shared_preferences_module.dart' as _i813;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final dioModule = _$DioModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.provideSharedPreferences(),
      preResolve: true,
    );
    gh.lazySingleton<_i528.PrettyDioLogger>(
      () => dioModule.providePrettyDioLogger(),
    );
    gh.lazySingleton<_i361.Dio>(
      () => dioModule.provideDio(gh<_i528.PrettyDioLogger>()),
    );
    gh.singleton<_i824.ApiService>(() => _i824.ApiService(gh<_i361.Dio>()));
    gh.factory<_i34.AuthDataSource>(
      () => _i314.AuthDataSourceImpl(gh<_i824.ApiService>()),
    );
    gh.factory<_i173.ExploreRemoteDataSource>(
      () => _i313.ExploreRemoteDataSourceImpl(gh<_i824.ApiService>()),
    );
    gh.factory<_i327.AuthRepo>(
      () => _i218.AuthRepoImpl(gh<_i34.AuthDataSource>()),
    );
    gh.factory<_i804.ExploreRepo>(
      () => _i1051.ExploreRepoImpl(gh<_i173.ExploreRemoteDataSource>()),
    );
    gh.factory<_i957.ForgetPasswordUseCase>(
      () => _i957.ForgetPasswordUseCase(gh<_i327.AuthRepo>()),
    );
    gh.factory<_i476.LoginUseCase>(
      () => _i476.LoginUseCase(gh<_i327.AuthRepo>()),
    );
    gh.factory<_i670.RegisterUseCase>(
      () => _i670.RegisterUseCase(gh<_i327.AuthRepo>()),
    );
    gh.factory<_i930.ResetPasswordUseCase>(
      () => _i930.ResetPasswordUseCase(gh<_i327.AuthRepo>()),
    );
    gh.factory<_i545.VerfiyPasswordUseCase>(
      () => _i545.VerfiyPasswordUseCase(gh<_i327.AuthRepo>()),
    );
    gh.factory<_i130.LoginCubit>(
      () => _i130.LoginCubit(gh<_i476.LoginUseCase>()),
    );
    gh.factory<_i263.RegisterCubit>(
      () => _i263.RegisterCubit(gh<_i670.RegisterUseCase>()),
    );
    gh.factory<_i397.GetAllSubjectsUseCase>(
      () => _i397.GetAllSubjectsUseCase(gh<_i804.ExploreRepo>()),
    );
    gh.factory<_i621.ExamOnSubjectUseCase>(
      () => _i621.ExamOnSubjectUseCase(gh<_i804.ExploreRepo>()),
    );
    gh.factory<_i385.QuestionsByExamUseCase>(
      () => _i385.QuestionsByExamUseCase(gh<_i804.ExploreRepo>()),
    );
    gh.factory<_i815.ExploreCubit>(
      () => _i815.ExploreCubit(
        gh<_i397.GetAllSubjectsUseCase>(),
        gh<_i621.ExamOnSubjectUseCase>(),
        gh<_i385.QuestionsByExamUseCase>(),
      ),
    );
    gh.factory<_i696.ForgetPasswordCubit>(
      () => _i696.ForgetPasswordCubit(
        gh<_i957.ForgetPasswordUseCase>(),
        gh<_i545.VerfiyPasswordUseCase>(),
        gh<_i930.ResetPasswordUseCase>(),
      ),
    );
    return this;
  }
}

class _$SharedPreferencesModule extends _i813.SharedPreferencesModule {}

class _$DioModule extends _i290.DioModule {}
