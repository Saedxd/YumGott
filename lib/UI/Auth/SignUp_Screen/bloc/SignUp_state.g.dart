// GENERATED CODE - DO NOT MODIFY BY HAND

part of SignUp_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpState extends SignUpState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final UserDataModel? data;

  factory _$SignUpState([void Function(SignUpStateBuilder)? updates]) =>
      (new SignUpStateBuilder()..update(updates))._build();

  _$SignUpState._({this.error, this.isLoading, this.success, this.data})
      : super._();

  @override
  SignUpState rebuild(void Function(SignUpStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpStateBuilder toBuilder() => new SignUpStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class SignUpStateBuilder implements Builder<SignUpState, SignUpStateBuilder> {
  _$SignUpState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  UserDataModelBuilder? _data;
  UserDataModelBuilder get data => _$this._data ??= new UserDataModelBuilder();
  set data(UserDataModelBuilder? data) => _$this._data = data;

  SignUpStateBuilder();

  SignUpStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpState;
  }

  @override
  void update(void Function(SignUpStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpState build() => _build();

  _$SignUpState _build() {
    _$SignUpState _$result;
    try {
      _$result = _$v ??
          new _$SignUpState._(
              error: error,
              isLoading: isLoading,
              success: success,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SignUpState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
