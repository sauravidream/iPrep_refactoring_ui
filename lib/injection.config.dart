// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sign_in_with_apple/sign_in_with_apple.dart' as _i9;

import 'application/auth/auth_status/auth_bloc.dart' as _i14;
import 'application/auth/course/course_watcher/course_watcher_bloc.dart'
    as _i10;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'domain/course/i_course_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectable.module.dart' as _i15;
import 'infrastructure/course/course_repository.dart' as _i8;
import 'presentation/router/router.gr.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.AppRouter>(firebaseInjectableModule.appRouter);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i7.ICourseRepository>(
      () => _i8.CourseRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i9.SignInWithApple>(
      () => firebaseInjectableModule.signInWithApple);
  gh.factory<_i10.CourseWatcherBloc>(
      () => _i10.CourseWatcherBloc(get<_i7.ICourseRepository>()));
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.FirebaseAuthFacade(
        get<_i4.FirebaseAuth>(),
        get<_i6.GoogleSignIn>(),
        get<_i9.SignInWithApple>(),
      ));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i11.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
