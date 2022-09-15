// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String e) errorMsg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ErrorMsg value) errorMsg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  $Res call({Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, (v) => _then(v as _$_AuthState));

  @override
  _$_AuthState get _value => super._value as _$_AuthState;

  @override
  $Res call({
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_AuthState(
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({required this.authFailureOrSuccessOption});

  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String e) errorMsg,
  }) {
    return $default(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
  }) {
    return $default?.call(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ErrorMsg value) errorMsg,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_AuthState;

  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String e) errorMsg,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ErrorMsg value) errorMsg,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String e) errorMsg,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ErrorMsg value) errorMsg,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_ErrorMsgCopyWith<$Res> {
  factory _$$_ErrorMsgCopyWith(
          _$_ErrorMsg value, $Res Function(_$_ErrorMsg) then) =
      __$$_ErrorMsgCopyWithImpl<$Res>;
  $Res call({String e});
}

/// @nodoc
class __$$_ErrorMsgCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_ErrorMsgCopyWith<$Res> {
  __$$_ErrorMsgCopyWithImpl(
      _$_ErrorMsg _value, $Res Function(_$_ErrorMsg) _then)
      : super(_value, (v) => _then(v as _$_ErrorMsg));

  @override
  _$_ErrorMsg get _value => super._value as _$_ErrorMsg;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_ErrorMsg(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorMsg implements _ErrorMsg {
  const _$_ErrorMsg(this.e);

  @override
  final String e;

  @override
  String toString() {
    return 'AuthState.errorMsg(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorMsg &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorMsgCopyWith<_$_ErrorMsg> get copyWith =>
      __$$_ErrorMsgCopyWithImpl<_$_ErrorMsg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)
        $default, {
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String e) errorMsg,
  }) {
    return errorMsg(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
  }) {
    return errorMsg?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?
        $default, {
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String e)? errorMsg,
    required TResult orElse(),
  }) {
    if (errorMsg != null) {
      return errorMsg(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_ErrorMsg value) errorMsg,
  }) {
    return errorMsg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
  }) {
    return errorMsg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_ErrorMsg value)? errorMsg,
    required TResult orElse(),
  }) {
    if (errorMsg != null) {
      return errorMsg(this);
    }
    return orElse();
  }
}

abstract class _ErrorMsg implements AuthState {
  const factory _ErrorMsg(final String e) = _$_ErrorMsg;

  String get e;
  @JsonKey(ignore: true)
  _$$_ErrorMsgCopyWith<_$_ErrorMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
