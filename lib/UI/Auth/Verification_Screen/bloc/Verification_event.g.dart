// GENERATED CODE - DO NOT MODIFY BY HAND

part of Verification_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResendOTP extends ResendOTP {
  @override
  final String? Email;

  factory _$ResendOTP([void Function(ResendOTPBuilder)? updates]) =>
      (new ResendOTPBuilder()..update(updates))._build();

  _$ResendOTP._({this.Email}) : super._();

  @override
  ResendOTP rebuild(void Function(ResendOTPBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResendOTPBuilder toBuilder() => new ResendOTPBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResendOTP && Email == other.Email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResendOTP')..add('Email', Email))
        .toString();
  }
}

class ResendOTPBuilder implements Builder<ResendOTP, ResendOTPBuilder> {
  _$ResendOTP? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  ResendOTPBuilder();

  ResendOTPBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResendOTP other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResendOTP;
  }

  @override
  void update(void Function(ResendOTPBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResendOTP build() => _build();

  _$ResendOTP _build() {
    final _$result = _$v ?? new _$ResendOTP._(Email: Email);
    replace(_$result);
    return _$result;
  }
}

class _$ValidateOTP extends ValidateOTP {
  @override
  final int? otp;
  @override
  final String? Email;

  factory _$ValidateOTP([void Function(ValidateOTPBuilder)? updates]) =>
      (new ValidateOTPBuilder()..update(updates))._build();

  _$ValidateOTP._({this.otp, this.Email}) : super._();

  @override
  ValidateOTP rebuild(void Function(ValidateOTPBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateOTPBuilder toBuilder() => new ValidateOTPBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateOTP && otp == other.otp && Email == other.Email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidateOTP')
          ..add('otp', otp)
          ..add('Email', Email))
        .toString();
  }
}

class ValidateOTPBuilder implements Builder<ValidateOTP, ValidateOTPBuilder> {
  _$ValidateOTP? _$v;

  int? _otp;
  int? get otp => _$this._otp;
  set otp(int? otp) => _$this._otp = otp;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  ValidateOTPBuilder();

  ValidateOTPBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _otp = $v.otp;
      _Email = $v.Email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateOTP other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateOTP;
  }

  @override
  void update(void Function(ValidateOTPBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateOTP build() => _build();

  _$ValidateOTP _build() {
    final _$result = _$v ?? new _$ValidateOTP._(otp: otp, Email: Email);
    replace(_$result);
    return _$result;
  }
}

class _$VerifyAccount extends VerifyAccount {
  @override
  final int? otp;
  @override
  final String? Email;

  factory _$VerifyAccount([void Function(VerifyAccountBuilder)? updates]) =>
      (new VerifyAccountBuilder()..update(updates))._build();

  _$VerifyAccount._({this.otp, this.Email}) : super._();

  @override
  VerifyAccount rebuild(void Function(VerifyAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyAccountBuilder toBuilder() => new VerifyAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyAccount && otp == other.otp && Email == other.Email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyAccount')
          ..add('otp', otp)
          ..add('Email', Email))
        .toString();
  }
}

class VerifyAccountBuilder
    implements Builder<VerifyAccount, VerifyAccountBuilder> {
  _$VerifyAccount? _$v;

  int? _otp;
  int? get otp => _$this._otp;
  set otp(int? otp) => _$this._otp = otp;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  VerifyAccountBuilder();

  VerifyAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _otp = $v.otp;
      _Email = $v.Email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyAccount;
  }

  @override
  void update(void Function(VerifyAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyAccount build() => _build();

  _$VerifyAccount _build() {
    final _$result = _$v ?? new _$VerifyAccount._(otp: otp, Email: Email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
