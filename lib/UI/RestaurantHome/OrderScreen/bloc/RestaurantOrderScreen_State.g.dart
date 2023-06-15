// GENERATED CODE - DO NOT MODIFY BY HAND

part of RestaurantOrderScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantOrderScreenState extends RestaurantOrderScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? Checkbox1Status;
  @override
  final bool? Checkbox2Status;

  factory _$RestaurantOrderScreenState(
          [void Function(RestaurantOrderScreenStateBuilder)? updates]) =>
      (new RestaurantOrderScreenStateBuilder()..update(updates))._build();

  _$RestaurantOrderScreenState._(
      {this.error,
      this.isLoading,
      this.success,
      this.Checkbox1Status,
      this.Checkbox2Status})
      : super._();

  @override
  RestaurantOrderScreenState rebuild(
          void Function(RestaurantOrderScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantOrderScreenStateBuilder toBuilder() =>
      new RestaurantOrderScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantOrderScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        Checkbox1Status == other.Checkbox1Status &&
        Checkbox2Status == other.Checkbox2Status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Checkbox1Status.hashCode);
    _$hash = $jc(_$hash, Checkbox2Status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantOrderScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Checkbox1Status', Checkbox1Status)
          ..add('Checkbox2Status', Checkbox2Status))
        .toString();
  }
}

class RestaurantOrderScreenStateBuilder
    implements
        Builder<RestaurantOrderScreenState, RestaurantOrderScreenStateBuilder> {
  _$RestaurantOrderScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _Checkbox1Status;
  bool? get Checkbox1Status => _$this._Checkbox1Status;
  set Checkbox1Status(bool? Checkbox1Status) =>
      _$this._Checkbox1Status = Checkbox1Status;

  bool? _Checkbox2Status;
  bool? get Checkbox2Status => _$this._Checkbox2Status;
  set Checkbox2Status(bool? Checkbox2Status) =>
      _$this._Checkbox2Status = Checkbox2Status;

  RestaurantOrderScreenStateBuilder();

  RestaurantOrderScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _Checkbox1Status = $v.Checkbox1Status;
      _Checkbox2Status = $v.Checkbox2Status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantOrderScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantOrderScreenState;
  }

  @override
  void update(void Function(RestaurantOrderScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantOrderScreenState build() => _build();

  _$RestaurantOrderScreenState _build() {
    final _$result = _$v ??
        new _$RestaurantOrderScreenState._(
            error: error,
            isLoading: isLoading,
            success: success,
            Checkbox1Status: Checkbox1Status,
            Checkbox2Status: Checkbox2Status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
