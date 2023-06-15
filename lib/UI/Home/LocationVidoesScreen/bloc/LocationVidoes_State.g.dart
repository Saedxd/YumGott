// GENERATED CODE - DO NOT MODIFY BY HAND

part of LocationVidoes_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LocationVidoesState extends LocationVidoesState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final int? Index;

  factory _$LocationVidoesState(
          [void Function(LocationVidoesStateBuilder)? updates]) =>
      (new LocationVidoesStateBuilder()..update(updates))._build();

  _$LocationVidoesState._(
      {this.error, this.isLoading, this.success, this.Index})
      : super._();

  @override
  LocationVidoesState rebuild(
          void Function(LocationVidoesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationVidoesStateBuilder toBuilder() =>
      new LocationVidoesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationVidoesState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        Index == other.Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationVidoesState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Index', Index))
        .toString();
  }
}

class LocationVidoesStateBuilder
    implements Builder<LocationVidoesState, LocationVidoesStateBuilder> {
  _$LocationVidoesState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  LocationVidoesStateBuilder();

  LocationVidoesStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _Index = $v.Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationVidoesState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationVidoesState;
  }

  @override
  void update(void Function(LocationVidoesStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationVidoesState build() => _build();

  _$LocationVidoesState _build() {
    final _$result = _$v ??
        new _$LocationVidoesState._(
            error: error, isLoading: isLoading, success: success, Index: Index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
