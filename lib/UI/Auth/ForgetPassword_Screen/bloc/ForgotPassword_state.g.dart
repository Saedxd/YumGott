// GENERATED CODE - DO NOT MODIFY BY HAND

part of ForgotPassword_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPasswordState extends ForgotPasswordState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;

  factory _$ForgotPasswordState(
          [void Function(ForgotPasswordStateBuilder)? updates]) =>
      (new ForgotPasswordStateBuilder()..update(updates))._build();

  _$ForgotPasswordState._({this.error, this.isLoading, this.success})
      : super._();

  @override
  ForgotPasswordState rebuild(
          void Function(ForgotPasswordStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordStateBuilder toBuilder() =>
      new ForgotPasswordStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPasswordState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForgotPasswordState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success))
        .toString();
  }
}

class ForgotPasswordStateBuilder
    implements Builder<ForgotPasswordState, ForgotPasswordStateBuilder> {
  _$ForgotPasswordState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ForgotPasswordStateBuilder();

  ForgotPasswordStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPasswordState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgotPasswordState;
  }

  @override
  void update(void Function(ForgotPasswordStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPasswordState build() => _build();

  _$ForgotPasswordState _build() {
    final _$result = _$v ??
        new _$ForgotPasswordState._(
            error: error, isLoading: isLoading, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
