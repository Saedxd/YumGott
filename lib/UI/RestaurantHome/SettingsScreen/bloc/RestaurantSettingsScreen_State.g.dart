// GENERATED CODE - DO NOT MODIFY BY HAND

part of RestaurantSettingsScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantSettingsScreenState extends RestaurantSettingsScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;

  factory _$RestaurantSettingsScreenState(
          [void Function(RestaurantSettingsScreenStateBuilder)? updates]) =>
      (new RestaurantSettingsScreenStateBuilder()..update(updates))._build();

  _$RestaurantSettingsScreenState._({this.error, this.isLoading, this.success})
      : super._();

  @override
  RestaurantSettingsScreenState rebuild(
          void Function(RestaurantSettingsScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantSettingsScreenStateBuilder toBuilder() =>
      new RestaurantSettingsScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantSettingsScreenState &&
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
    return (newBuiltValueToStringHelper(r'RestaurantSettingsScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success))
        .toString();
  }
}

class RestaurantSettingsScreenStateBuilder
    implements
        Builder<RestaurantSettingsScreenState,
            RestaurantSettingsScreenStateBuilder> {
  _$RestaurantSettingsScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  RestaurantSettingsScreenStateBuilder();

  RestaurantSettingsScreenStateBuilder get _$this {
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
  void replace(RestaurantSettingsScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantSettingsScreenState;
  }

  @override
  void update(void Function(RestaurantSettingsScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantSettingsScreenState build() => _build();

  _$RestaurantSettingsScreenState _build() {
    final _$result = _$v ??
        new _$RestaurantSettingsScreenState._(
            error: error, isLoading: isLoading, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
