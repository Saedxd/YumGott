// GENERATED CODE - DO NOT MODIFY BY HAND

part of SelectMedia_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSelectedVideoPath extends ChangeSelectedVideoPath {
  @override
  final String? Value;

  factory _$ChangeSelectedVideoPath(
          [void Function(ChangeSelectedVideoPathBuilder)? updates]) =>
      (new ChangeSelectedVideoPathBuilder()..update(updates))._build();

  _$ChangeSelectedVideoPath._({this.Value}) : super._();

  @override
  ChangeSelectedVideoPath rebuild(
          void Function(ChangeSelectedVideoPathBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedVideoPathBuilder toBuilder() =>
      new ChangeSelectedVideoPathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedVideoPath && Value == other.Value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeSelectedVideoPath')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeSelectedVideoPathBuilder
    implements
        Builder<ChangeSelectedVideoPath, ChangeSelectedVideoPathBuilder> {
  _$ChangeSelectedVideoPath? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeSelectedVideoPathBuilder();

  ChangeSelectedVideoPathBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedVideoPath other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedVideoPath;
  }

  @override
  void update(void Function(ChangeSelectedVideoPathBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedVideoPath build() => _build();

  _$ChangeSelectedVideoPath _build() {
    final _$result = _$v ?? new _$ChangeSelectedVideoPath._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
