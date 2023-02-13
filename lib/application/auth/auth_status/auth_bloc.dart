import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/core/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<_AuthCheckRequested>((event, emit) => _authCheckRequested(event, emit));
    on<_SignedOut>((event, emit) => _signedOut(event, emit));
  }

  Future<void> _authCheckRequested(
      _AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOption = await _authFacade.getSignedInUser();
    emit(userOption.fold(() => const AuthState.unauthenticated(),
        (user) => AuthState.authenticated(user)));
  }

  Future<void> _signedOut(_SignedOut event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
