// GENERATED CODE - DO NOT MODIFY BY HAND

part of MapScreen_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddMarkers extends AddMarkers {
  @override
  final Marker? marker;

  factory _$AddMarkers([void Function(AddMarkersBuilder)? updates]) =>
      (new AddMarkersBuilder()..update(updates))._build();

  _$AddMarkers._({this.marker}) : super._();

  @override
  AddMarkers rebuild(void Function(AddMarkersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddMarkersBuilder toBuilder() => new AddMarkersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddMarkers && marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddMarkers')..add('marker', marker))
        .toString();
  }
}

class AddMarkersBuilder implements Builder<AddMarkers, AddMarkersBuilder> {
  _$AddMarkers? _$v;

  Marker? _marker;
  Marker? get marker => _$this._marker;
  set marker(Marker? marker) => _$this._marker = marker;

  AddMarkersBuilder();

  AddMarkersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddMarkers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddMarkers;
  }

  @override
  void update(void Function(AddMarkersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddMarkers build() => _build();

  _$AddMarkers _build() {
    final _$result = _$v ?? new _$AddMarkers._(marker: marker);
    replace(_$result);
    return _$result;
  }
}

class _$ClearMarkers extends ClearMarkers {
  factory _$ClearMarkers([void Function(ClearMarkersBuilder)? updates]) =>
      (new ClearMarkersBuilder()..update(updates))._build();

  _$ClearMarkers._() : super._();

  @override
  ClearMarkers rebuild(void Function(ClearMarkersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearMarkersBuilder toBuilder() => new ClearMarkersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearMarkers;
  }

  @override
  int get hashCode {
    return 773877997;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ClearMarkers').toString();
  }
}

class ClearMarkersBuilder
    implements Builder<ClearMarkers, ClearMarkersBuilder> {
  _$ClearMarkers? _$v;

  ClearMarkersBuilder();

  @override
  void replace(ClearMarkers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearMarkers;
  }

  @override
  void update(void Function(ClearMarkersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearMarkers build() => _build();

  _$ClearMarkers _build() {
    final _$result = _$v ?? new _$ClearMarkers._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
