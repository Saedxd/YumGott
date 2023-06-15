// GENERATED CODE - DO NOT MODIFY BY HAND

part of Settings_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SettingsScreenState extends SettingsScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;

  factory _$SettingsScreenState(
          [void Function(SettingsScreenStateBuilder)? updates]) =>
      (new SettingsScreenStateBuilder()..update(updates))._build();

  _$SettingsScreenState._({this.error, this.isLoading, this.success})
      : super._();

  @override
  SettingsScreenState rebuild(
          void Function(SettingsScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsScreenStateBuilder toBuilder() =>
      new SettingsScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsScreenState &&
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
    return (newBuiltValueToStringHelper(r'SettingsScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success))
        .toString();
  }
}

class SettingsScreenStateBuilder
    implements Builder<SettingsScreenState, SettingsScreenStateBuilder> {
  _$SettingsScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  SettingsScreenStateBuilder();

  SettingsScreenStateBuilder get _$this {
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
  void replace(SettingsScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingsScreenState;
  }

  @override
  void update(void Function(SettingsScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsScreenState build() => _build();

  _$SettingsScreenState _build() {
    final _$result = _$v ??
        new _$SettingsScreenState._(
            error: error, isLoading: isLoading, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
