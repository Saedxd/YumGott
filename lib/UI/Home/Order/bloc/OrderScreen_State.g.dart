// GENERATED CODE - DO NOT MODIFY BY HAND

part of OrderScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderScreenState extends OrderScreenState {
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

  factory _$OrderScreenState(
          [void Function(OrderScreenStateBuilder)? updates]) =>
      (new OrderScreenStateBuilder()..update(updates))._build();

  _$OrderScreenState._(
      {this.error,
      this.isLoading,
      this.success,
      this.Checkbox1Status,
      this.Checkbox2Status})
      : super._();

  @override
  OrderScreenState rebuild(void Function(OrderScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderScreenStateBuilder toBuilder() =>
      new OrderScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderScreenState &&
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
    return (newBuiltValueToStringHelper(r'OrderScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Checkbox1Status', Checkbox1Status)
          ..add('Checkbox2Status', Checkbox2Status))
        .toString();
  }
}

class OrderScreenStateBuilder
    implements Builder<OrderScreenState, OrderScreenStateBuilder> {
  _$OrderScreenState? _$v;

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

  OrderScreenStateBuilder();

  OrderScreenStateBuilder get _$this {
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
  void replace(OrderScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderScreenState;
  }

  @override
  void update(void Function(OrderScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderScreenState build() => _build();

  _$OrderScreenState _build() {
    final _$result = _$v ??
        new _$OrderScreenState._(
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
