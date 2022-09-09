// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChaged,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
    required TResult Function() signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChaged,
    required TResult Function(RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(SignInWithEmailPasswordString value)
        signInWithEmailPassword,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_$EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChaged,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
    required TResult Function() signInWithGooglePressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChaged,
    required TResult Function(RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(SignInWithEmailPasswordString value)
        signInWithEmailPassword,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged(final String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_$PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChaged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChaged,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
    required TResult Function() signInWithGooglePressed,
  }) {
    return passwordChaged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
  }) {
    return passwordChaged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChaged != null) {
      return passwordChaged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChaged,
    required TResult Function(RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(SignInWithEmailPasswordString value)
        signInWithEmailPassword,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return passwordChaged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return passwordChaged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChaged != null) {
      return passwordChaged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(final String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterWithEmailPasswordCopyWith<$Res> {
  factory _$$RegisterWithEmailPasswordCopyWith(
          _$RegisterWithEmailPassword value,
          $Res Function(_$RegisterWithEmailPassword) then) =
      __$$RegisterWithEmailPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$$RegisterWithEmailPasswordCopyWith<$Res> {
  __$$RegisterWithEmailPasswordCopyWithImpl(_$RegisterWithEmailPassword _value,
      $Res Function(_$RegisterWithEmailPassword) _then)
      : super(_value, (v) => _then(v as _$RegisterWithEmailPassword));

  @override
  _$RegisterWithEmailPassword get _value =>
      super._value as _$RegisterWithEmailPassword;
}

/// @nodoc

class _$RegisterWithEmailPassword implements RegisterWithEmailPassword {
  const _$RegisterWithEmailPassword();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChaged,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
    required TResult Function() signInWithGooglePressed,
  }) {
    return registerWithEmailPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
  }) {
    return registerWithEmailPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailPassword != null) {
      return registerWithEmailPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChaged,
    required TResult Function(RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(SignInWithEmailPasswordString value)
        signInWithEmailPassword,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return registerWithEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return registerWithEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailPassword != null) {
      return registerWithEmailPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailPassword implements SignInFormEvent {
  const factory RegisterWithEmailPassword() = _$RegisterWithEmailPassword;
}

/// @nodoc
abstract class _$$SignInWithEmailPasswordStringCopyWith<$Res> {
  factory _$$SignInWithEmailPasswordStringCopyWith(
          _$SignInWithEmailPasswordString value,
          $Res Function(_$SignInWithEmailPasswordString) then) =
      __$$SignInWithEmailPasswordStringCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailPasswordStringCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$$SignInWithEmailPasswordStringCopyWith<$Res> {
  __$$SignInWithEmailPasswordStringCopyWithImpl(
      _$SignInWithEmailPasswordString _value,
      $Res Function(_$SignInWithEmailPasswordString) _then)
      : super(_value, (v) => _then(v as _$SignInWithEmailPasswordString));

  @override
  _$SignInWithEmailPasswordString get _value =>
      super._value as _$SignInWithEmailPasswordString;
}

/// @nodoc

class _$SignInWithEmailPasswordString implements SignInWithEmailPasswordString {
  const _$SignInWithEmailPasswordString();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailPasswordString);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChaged,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
    required TResult Function() signInWithGooglePressed,
  }) {
    return signInWithEmailPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
  }) {
    return signInWithEmailPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailPassword != null) {
      return signInWithEmailPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChaged,
    required TResult Function(RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(SignInWithEmailPasswordString value)
        signInWithEmailPassword,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return signInWithEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return signInWithEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailPassword != null) {
      return signInWithEmailPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailPasswordString implements SignInFormEvent {
  const factory SignInWithEmailPasswordString() =
      _$SignInWithEmailPasswordString;
}

/// @nodoc
abstract class _$$SignInWithGooglePressedCopyWith<$Res> {
  factory _$$SignInWithGooglePressedCopyWith(_$SignInWithGooglePressed value,
          $Res Function(_$SignInWithGooglePressed) then) =
      __$$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$$SignInWithGooglePressedCopyWith<$Res> {
  __$$SignInWithGooglePressedCopyWithImpl(_$SignInWithGooglePressed _value,
      $Res Function(_$SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _$SignInWithGooglePressed));

  @override
  _$SignInWithGooglePressed get _value =>
      super._value as _$SignInWithGooglePressed;
}

/// @nodoc

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChaged,
    required TResult Function() registerWithEmailPassword,
    required TResult Function() signInWithEmailPassword,
    required TResult Function() signInWithGooglePressed,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChaged,
    TResult Function()? registerWithEmailPassword,
    TResult Function()? signInWithEmailPassword,
    TResult Function()? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChaged,
    required TResult Function(RegisterWithEmailPassword value)
        registerWithEmailPassword,
    required TResult Function(SignInWithEmailPasswordString value)
        signInWithEmailPassword,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChaged,
    TResult Function(RegisterWithEmailPassword value)?
        registerWithEmailPassword,
    TResult Function(SignInWithEmailPasswordString value)?
        signInWithEmailPassword,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMsg => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMsg,
      bool isSubmitted,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMsg = freezed,
    Object? isSubmitted = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMsg: showErrorMsg == freezed
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMsg,
      bool isSubmitted,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, (v) => _then(v as _$_SignInFormState));

  @override
  _$_SignInFormState get _value => super._value as _$_SignInFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMsg = freezed,
    Object? isSubmitted = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMsg: showErrorMsg == freezed
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMsg,
      required this.isSubmitted,
      required this.authFailureOrSuccess});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMsg;
  @override
  final bool isSubmitted;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMsg: $showErrorMsg, isSubmitted: $isSubmitted, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMsg, showErrorMsg) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitted, isSubmitted) &&
            const DeepCollectionEquality()
                .equals(other.authFailureOrSuccess, authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrorMsg),
      const DeepCollectionEquality().hash(isSubmitted),
      const DeepCollectionEquality().hash(authFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool showErrorMsg,
      required final bool isSubmitted,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccess}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMsg;
  @override
  bool get isSubmitted;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
