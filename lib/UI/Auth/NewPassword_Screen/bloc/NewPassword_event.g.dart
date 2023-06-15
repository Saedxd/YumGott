// GENERATED CODE - DO NOT MODIFY BY HAND

part of NewPassword_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePassword extends ChangePassword {
  @override
  final String? Email;
  @override
  final String? password;
  @override
  final int? OTP;

  factory _$ChangePassword([void Function(ChangePasswordBuilder)? updates]) =>
      (new ChangePasswordBuilder()..update(updates))._build();

  _$ChangePassword._({this.Email, this.password, this.OTP}) : super._();

  @override
  ChangePassword rebuild(void Function(ChangePasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePasswordBuilder toBuilder() =>
      new ChangePasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePassword &&
        Email == other.Email &&
        password == other.password &&
        OTP == other.OTP;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, OTP.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePassword')
          ..add('Email', Email)
          ..add('password', password)
          ..add('OTP', OTP))
        .toString();
  }
}

class ChangePasswordBuilder
    implements Builder<ChangePassword, ChangePasswordBuilder> {
  _$ChangePassword? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  int? _OTP;
  int? get OTP => _$this._OTP;
  set OTP(int? OTP) => _$this._OTP = OTP;

  ChangePasswordBuilder();

  ChangePasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _password = $v.password;
      _OTP = $v.OTP;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePassword;
  }

  @override
  void update(void Function(ChangePasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePassword build() => _build();

  _$ChangePassword _build() {
    final _$result = _$v ??
        new _$ChangePassword._(Email: Email, password: password, OTP: OTP);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
