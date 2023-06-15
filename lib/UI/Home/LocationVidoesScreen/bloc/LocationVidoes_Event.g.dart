// GENERATED CODE - DO NOT MODIFY BY HAND

part of LocationVidoes_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePage extends ChangePage {
  @override
  final int? index;

  factory _$ChangePage([void Function(ChangePageBuilder)? updates]) =>
      (new ChangePageBuilder()..update(updates))._build();

  _$ChangePage._({this.index}) : super._();

  @override
  ChangePage rebuild(void Function(ChangePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePageBuilder toBuilder() => new ChangePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePage && index == other.index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePage')..add('index', index))
        .toString();
  }
}

class ChangePageBuilder implements Builder<ChangePage, ChangePageBuilder> {
  _$ChangePage? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ChangePageBuilder();

  ChangePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePage;
  }

  @override
  void update(void Function(ChangePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePage build() => _build();

  _$ChangePage _build() {
    final _$result = _$v ?? new _$ChangePage._(index: index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
