// GENERATED CODE - DO NOT MODIFY BY HAND

part of Menu_Event;

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

class _$ChangeSelectedTab extends ChangeSelectedTab {
  @override
  final int? index;

  factory _$ChangeSelectedTab(
          [void Function(ChangeSelectedTabBuilder)? updates]) =>
      (new ChangeSelectedTabBuilder()..update(updates))._build();

  _$ChangeSelectedTab._({this.index}) : super._();

  @override
  ChangeSelectedTab rebuild(void Function(ChangeSelectedTabBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedTabBuilder toBuilder() =>
      new ChangeSelectedTabBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedTab && index == other.index;
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
    return (newBuiltValueToStringHelper(r'ChangeSelectedTab')
          ..add('index', index))
        .toString();
  }
}

class ChangeSelectedTabBuilder
    implements Builder<ChangeSelectedTab, ChangeSelectedTabBuilder> {
  _$ChangeSelectedTab? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ChangeSelectedTabBuilder();

  ChangeSelectedTabBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedTab other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedTab;
  }

  @override
  void update(void Function(ChangeSelectedTabBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedTab build() => _build();

  _$ChangeSelectedTab _build() {
    final _$result = _$v ?? new _$ChangeSelectedTab._(index: index);
    replace(_$result);
    return _$result;
  }
}

class _$GetMenu extends GetMenu {
  @override
  final int? Restaurant_ID;

  factory _$GetMenu([void Function(GetMenuBuilder)? updates]) =>
      (new GetMenuBuilder()..update(updates))._build();

  _$GetMenu._({this.Restaurant_ID}) : super._();

  @override
  GetMenu rebuild(void Function(GetMenuBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMenuBuilder toBuilder() => new GetMenuBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMenu && Restaurant_ID == other.Restaurant_ID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Restaurant_ID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMenu')
          ..add('Restaurant_ID', Restaurant_ID))
        .toString();
  }
}

class GetMenuBuilder implements Builder<GetMenu, GetMenuBuilder> {
  _$GetMenu? _$v;

  int? _Restaurant_ID;
  int? get Restaurant_ID => _$this._Restaurant_ID;
  set Restaurant_ID(int? Restaurant_ID) =>
      _$this._Restaurant_ID = Restaurant_ID;

  GetMenuBuilder();

  GetMenuBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Restaurant_ID = $v.Restaurant_ID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMenu other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMenu;
  }

  @override
  void update(void Function(GetMenuBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMenu build() => _build();

  _$GetMenu _build() {
    final _$result = _$v ?? new _$GetMenu._(Restaurant_ID: Restaurant_ID);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
