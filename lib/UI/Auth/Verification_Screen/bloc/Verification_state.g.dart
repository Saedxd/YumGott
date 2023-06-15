// GENERATED CODE - DO NOT MODIFY BY HAND

part of Verification_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerificationState extends VerificationState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? Error;

  factory _$VerificationState(
          [void Function(VerificationStateBuilder)? updates]) =>
      (new VerificationStateBuilder()..update(updates))._build();

  _$VerificationState._({this.error, this.isLoading, this.success, this.Error})
      : super._();

  @override
  VerificationState rebuild(void Function(VerificationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerificationStateBuilder toBuilder() =>
      new VerificationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerificationState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        Error == other.Error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerificationState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Error', Error))
        .toString();
  }
}

class VerificationStateBuilder
    implements Builder<VerificationState, VerificationStateBuilder> {
  _$VerificationState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _Error;
  bool? get Error => _$this._Error;
  set Error(bool? Error) => _$this._Error = Error;

  VerificationStateBuilder();

  VerificationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _Error = $v.Error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerificationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerificationState;
  }

  @override
  void update(void Function(VerificationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerificationState build() => _build();

  _$VerificationState _build() {
    final _$result = _$v ??
        new _$VerificationState._(
            error: error, isLoading: isLoading, success: success, Error: Error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
