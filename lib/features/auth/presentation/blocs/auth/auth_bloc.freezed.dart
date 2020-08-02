// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _LoginEvent login() {
    return const _LoginEvent();
  }

// ignore: unused_element
  _LogoutEvent logout() {
    return const _LogoutEvent();
  }

// ignore: unused_element
  _CheckIsLoggedInEvent checkIsLoggedIn() {
    return const _CheckIsLoggedInEvent();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$LoginEventCopyWith<$Res> {
  factory _$LoginEventCopyWith(
          _LoginEvent value, $Res Function(_LoginEvent) then) =
      __$LoginEventCopyWithImpl<$Res>;
}

class __$LoginEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginEventCopyWith<$Res> {
  __$LoginEventCopyWithImpl(
      _LoginEvent _value, $Res Function(_LoginEvent) _then)
      : super(_value, (v) => _then(v as _LoginEvent));

  @override
  _LoginEvent get _value => super._value as _LoginEvent;
}

class _$_LoginEvent implements _LoginEvent {
  const _$_LoginEvent();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return login();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements AuthEvent {
  const factory _LoginEvent() = _$_LoginEvent;
}

abstract class _$LogoutEventCopyWith<$Res> {
  factory _$LogoutEventCopyWith(
          _LogoutEvent value, $Res Function(_LogoutEvent) then) =
      __$LogoutEventCopyWithImpl<$Res>;
}

class __$LogoutEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutEventCopyWith<$Res> {
  __$LogoutEventCopyWithImpl(
      _LogoutEvent _value, $Res Function(_LogoutEvent) _then)
      : super(_value, (v) => _then(v as _LogoutEvent));

  @override
  _LogoutEvent get _value => super._value as _LogoutEvent;
}

class _$_LogoutEvent implements _LogoutEvent {
  const _$_LogoutEvent();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements AuthEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
}

abstract class _$CheckIsLoggedInEventCopyWith<$Res> {
  factory _$CheckIsLoggedInEventCopyWith(_CheckIsLoggedInEvent value,
          $Res Function(_CheckIsLoggedInEvent) then) =
      __$CheckIsLoggedInEventCopyWithImpl<$Res>;
}

class __$CheckIsLoggedInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$CheckIsLoggedInEventCopyWith<$Res> {
  __$CheckIsLoggedInEventCopyWithImpl(
      _CheckIsLoggedInEvent _value, $Res Function(_CheckIsLoggedInEvent) _then)
      : super(_value, (v) => _then(v as _CheckIsLoggedInEvent));

  @override
  _CheckIsLoggedInEvent get _value => super._value as _CheckIsLoggedInEvent;
}

class _$_CheckIsLoggedInEvent implements _CheckIsLoggedInEvent {
  const _$_CheckIsLoggedInEvent();

  @override
  String toString() {
    return 'AuthEvent.checkIsLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckIsLoggedInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return checkIsLoggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLoggedIn != null) {
      return checkIsLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return checkIsLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLoggedIn != null) {
      return checkIsLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _CheckIsLoggedInEvent implements AuthEvent {
  const factory _CheckIsLoggedInEvent() = _$_CheckIsLoggedInEvent;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _UnauthorizedState unauthorized() {
    return const _UnauthorizedState();
  }

// ignore: unused_element
  _ErrorState error({@required String message}) {
    return _ErrorState(
      message: message,
    );
  }

// ignore: unused_element
  _LoggedInState loggedIn({@required User user}) {
    return _LoggedInState(
      user: user,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthorized(),
    @required Result error(String message),
    @required Result loggedIn(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthorized(),
    Result error(String message),
    Result loggedIn(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthorized(_UnauthorizedState value),
    @required Result error(_ErrorState value),
    @required Result loggedIn(_LoggedInState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthorized(_UnauthorizedState value),
    Result error(_ErrorState value),
    Result loggedIn(_LoggedInState value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$UnauthorizedStateCopyWith<$Res> {
  factory _$UnauthorizedStateCopyWith(
          _UnauthorizedState value, $Res Function(_UnauthorizedState) then) =
      __$UnauthorizedStateCopyWithImpl<$Res>;
}

class __$UnauthorizedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthorizedStateCopyWith<$Res> {
  __$UnauthorizedStateCopyWithImpl(
      _UnauthorizedState _value, $Res Function(_UnauthorizedState) _then)
      : super(_value, (v) => _then(v as _UnauthorizedState));

  @override
  _UnauthorizedState get _value => super._value as _UnauthorizedState;
}

class _$_UnauthorizedState implements _UnauthorizedState {
  const _$_UnauthorizedState();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnauthorizedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthorized(),
    @required Result error(String message),
    @required Result loggedIn(User user),
  }) {
    assert(unauthorized != null);
    assert(error != null);
    assert(loggedIn != null);
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthorized(),
    Result error(String message),
    Result loggedIn(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthorized(_UnauthorizedState value),
    @required Result error(_ErrorState value),
    @required Result loggedIn(_LoggedInState value),
  }) {
    assert(unauthorized != null);
    assert(error != null);
    assert(loggedIn != null);
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthorized(_UnauthorizedState value),
    Result error(_ErrorState value),
    Result loggedIn(_LoggedInState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _UnauthorizedState implements AuthState {
  const factory _UnauthorizedState() = _$_UnauthorizedState;
}

abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ErrorStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthorized(),
    @required Result error(String message),
    @required Result loggedIn(User user),
  }) {
    assert(unauthorized != null);
    assert(error != null);
    assert(loggedIn != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthorized(),
    Result error(String message),
    Result loggedIn(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthorized(_UnauthorizedState value),
    @required Result error(_ErrorState value),
    @required Result loggedIn(_LoggedInState value),
  }) {
    assert(unauthorized != null);
    assert(error != null);
    assert(loggedIn != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthorized(_UnauthorizedState value),
    Result error(_ErrorState value),
    Result loggedIn(_LoggedInState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AuthState {
  const factory _ErrorState({@required String message}) = _$_ErrorState;

  String get message;
  _$ErrorStateCopyWith<_ErrorState> get copyWith;
}

abstract class _$LoggedInStateCopyWith<$Res> {
  factory _$LoggedInStateCopyWith(
          _LoggedInState value, $Res Function(_LoggedInState) then) =
      __$LoggedInStateCopyWithImpl<$Res>;
  $Res call({User user});
}

class __$LoggedInStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoggedInStateCopyWith<$Res> {
  __$LoggedInStateCopyWithImpl(
      _LoggedInState _value, $Res Function(_LoggedInState) _then)
      : super(_value, (v) => _then(v as _LoggedInState));

  @override
  _LoggedInState get _value => super._value as _LoggedInState;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_LoggedInState(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_LoggedInState implements _LoggedInState {
  const _$_LoggedInState({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoggedInState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$LoggedInStateCopyWith<_LoggedInState> get copyWith =>
      __$LoggedInStateCopyWithImpl<_LoggedInState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unauthorized(),
    @required Result error(String message),
    @required Result loggedIn(User user),
  }) {
    assert(unauthorized != null);
    assert(error != null);
    assert(loggedIn != null);
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unauthorized(),
    Result error(String message),
    Result loggedIn(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unauthorized(_UnauthorizedState value),
    @required Result error(_ErrorState value),
    @required Result loggedIn(_LoggedInState value),
  }) {
    assert(unauthorized != null);
    assert(error != null);
    assert(loggedIn != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unauthorized(_UnauthorizedState value),
    Result error(_ErrorState value),
    Result loggedIn(_LoggedInState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedInState implements AuthState {
  const factory _LoggedInState({@required User user}) = _$_LoggedInState;

  User get user;
  _$LoggedInStateCopyWith<_LoggedInState> get copyWith;
}
