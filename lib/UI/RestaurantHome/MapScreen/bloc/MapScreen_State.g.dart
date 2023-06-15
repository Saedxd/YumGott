// GENERATED CODE - DO NOT MODIFY BY HAND

part of MapScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapScreenState extends MapScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? NewMarker_isLoading;
  @override
  final Set<Marker>? New_marker2;

  factory _$MapScreenState([void Function(MapScreenStateBuilder)? updates]) =>
      (new MapScreenStateBuilder()..update(updates))._build();

  _$MapScreenState._(
      {this.error,
      this.isLoading,
      this.success,
      this.NewMarker_isLoading,
      this.New_marker2})
      : super._();

  @override
  MapScreenState rebuild(void Function(MapScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapScreenStateBuilder toBuilder() =>
      new MapScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        NewMarker_isLoading == other.NewMarker_isLoading &&
        New_marker2 == other.New_marker2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, NewMarker_isLoading.hashCode);
    _$hash = $jc(_$hash, New_marker2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('NewMarker_isLoading', NewMarker_isLoading)
          ..add('New_marker2', New_marker2))
        .toString();
  }
}

class MapScreenStateBuilder
    implements Builder<MapScreenState, MapScreenStateBuilder> {
  _$MapScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _NewMarker_isLoading;
  bool? get NewMarker_isLoading => _$this._NewMarker_isLoading;
  set NewMarker_isLoading(bool? NewMarker_isLoading) =>
      _$this._NewMarker_isLoading = NewMarker_isLoading;

  Set<Marker>? _New_marker2;
  Set<Marker>? get New_marker2 => _$this._New_marker2;
  set New_marker2(Set<Marker>? New_marker2) =>
      _$this._New_marker2 = New_marker2;

  MapScreenStateBuilder();

  MapScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _NewMarker_isLoading = $v.NewMarker_isLoading;
      _New_marker2 = $v.New_marker2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapScreenState;
  }

  @override
  void update(void Function(MapScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapScreenState build() => _build();

  _$MapScreenState _build() {
    final _$result = _$v ??
        new _$MapScreenState._(
            error: error,
            isLoading: isLoading,
            success: success,
            NewMarker_isLoading: NewMarker_isLoading,
            New_marker2: New_marker2);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
