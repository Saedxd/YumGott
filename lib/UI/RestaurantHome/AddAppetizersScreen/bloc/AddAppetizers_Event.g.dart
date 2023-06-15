// GENERATED CODE - DO NOT MODIFY BY HAND

part of AddAppetizers_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSelectedItem extends ChangeSelectedItem {
  @override
  final String? Country;

  factory _$ChangeSelectedItem(
          [void Function(ChangeSelectedItemBuilder)? updates]) =>
      (new ChangeSelectedItemBuilder()..update(updates))._build();

  _$ChangeSelectedItem._({this.Country}) : super._();

  @override
  ChangeSelectedItem rebuild(
          void Function(ChangeSelectedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedItemBuilder toBuilder() =>
      new ChangeSelectedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedItem && Country == other.Country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeSelectedItem')
          ..add('Country', Country))
        .toString();
  }
}

class ChangeSelectedItemBuilder
    implements Builder<ChangeSelectedItem, ChangeSelectedItemBuilder> {
  _$ChangeSelectedItem? _$v;

  String? _Country;
  String? get Country => _$this._Country;
  set Country(String? Country) => _$this._Country = Country;

  ChangeSelectedItemBuilder();

  ChangeSelectedItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Country = $v.Country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedItem;
  }

  @override
  void update(void Function(ChangeSelectedItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedItem build() => _build();

  _$ChangeSelectedItem _build() {
    final _$result = _$v ?? new _$ChangeSelectedItem._(Country: Country);
    replace(_$result);
    return _$result;
  }
}

class _$CreateAppetizer extends CreateAppetizer {
  @override
  final int? appetizer_id;
  @override
  final String? name;
  @override
  final String? info;
  @override
  final double? price;

  factory _$CreateAppetizer([void Function(CreateAppetizerBuilder)? updates]) =>
      (new CreateAppetizerBuilder()..update(updates))._build();

  _$CreateAppetizer._({this.appetizer_id, this.name, this.info, this.price})
      : super._();

  @override
  CreateAppetizer rebuild(void Function(CreateAppetizerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAppetizerBuilder toBuilder() =>
      new CreateAppetizerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAppetizer &&
        appetizer_id == other.appetizer_id &&
        name == other.name &&
        info == other.info &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appetizer_id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAppetizer')
          ..add('appetizer_id', appetizer_id)
          ..add('name', name)
          ..add('info', info)
          ..add('price', price))
        .toString();
  }
}

class CreateAppetizerBuilder
    implements Builder<CreateAppetizer, CreateAppetizerBuilder> {
  _$CreateAppetizer? _$v;

  int? _appetizer_id;
  int? get appetizer_id => _$this._appetizer_id;
  set appetizer_id(int? appetizer_id) => _$this._appetizer_id = appetizer_id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  CreateAppetizerBuilder();

  CreateAppetizerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appetizer_id = $v.appetizer_id;
      _name = $v.name;
      _info = $v.info;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAppetizer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAppetizer;
  }

  @override
  void update(void Function(CreateAppetizerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAppetizer build() => _build();

  _$CreateAppetizer _build() {
    final _$result = _$v ??
        new _$CreateAppetizer._(
            appetizer_id: appetizer_id, name: name, info: info, price: price);
    replace(_$result);
    return _$result;
  }
}

class _$GetAppetizers extends GetAppetizers {
  factory _$GetAppetizers([void Function(GetAppetizersBuilder)? updates]) =>
      (new GetAppetizersBuilder()..update(updates))._build();

  _$GetAppetizers._() : super._();

  @override
  GetAppetizers rebuild(void Function(GetAppetizersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAppetizersBuilder toBuilder() => new GetAppetizersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAppetizers;
  }

  @override
  int get hashCode {
    return 15059593;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAppetizers').toString();
  }
}

class GetAppetizersBuilder
    implements Builder<GetAppetizers, GetAppetizersBuilder> {
  _$GetAppetizers? _$v;

  GetAppetizersBuilder();

  @override
  void replace(GetAppetizers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAppetizers;
  }

  @override
  void update(void Function(GetAppetizersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAppetizers build() => _build();

  _$GetAppetizers _build() {
    final _$result = _$v ?? new _$GetAppetizers._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeSelectedImage extends ChangeSelectedImage {
  @override
  final File? Value;

  factory _$ChangeSelectedImage(
          [void Function(ChangeSelectedImageBuilder)? updates]) =>
      (new ChangeSelectedImageBuilder()..update(updates))._build();

  _$ChangeSelectedImage._({this.Value}) : super._();

  @override
  ChangeSelectedImage rebuild(
          void Function(ChangeSelectedImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedImageBuilder toBuilder() =>
      new ChangeSelectedImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedImage && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeSelectedImage')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeSelectedImageBuilder
    implements Builder<ChangeSelectedImage, ChangeSelectedImageBuilder> {
  _$ChangeSelectedImage? _$v;

  File? _Value;
  File? get Value => _$this._Value;
  set Value(File? Value) => _$this._Value = Value;

  ChangeSelectedImageBuilder();

  ChangeSelectedImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedImage;
  }

  @override
  void update(void Function(ChangeSelectedImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedImage build() => _build();

  _$ChangeSelectedImage _build() {
    final _$result = _$v ?? new _$ChangeSelectedImage._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeSelectedAppetizerCategory
    extends ChangeSelectedAppetizerCategory {
  @override
  final String? Value;

  factory _$ChangeSelectedAppetizerCategory(
          [void Function(ChangeSelectedAppetizerCategoryBuilder)? updates]) =>
      (new ChangeSelectedAppetizerCategoryBuilder()..update(updates))._build();

  _$ChangeSelectedAppetizerCategory._({this.Value}) : super._();

  @override
  ChangeSelectedAppetizerCategory rebuild(
          void Function(ChangeSelectedAppetizerCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedAppetizerCategoryBuilder toBuilder() =>
      new ChangeSelectedAppetizerCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedAppetizerCategory && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeSelectedAppetizerCategory')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeSelectedAppetizerCategoryBuilder
    implements
        Builder<ChangeSelectedAppetizerCategory,
            ChangeSelectedAppetizerCategoryBuilder> {
  _$ChangeSelectedAppetizerCategory? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeSelectedAppetizerCategoryBuilder();

  ChangeSelectedAppetizerCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedAppetizerCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedAppetizerCategory;
  }

  @override
  void update(void Function(ChangeSelectedAppetizerCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedAppetizerCategory build() => _build();

  _$ChangeSelectedAppetizerCategory _build() {
    final _$result =
        _$v ?? new _$ChangeSelectedAppetizerCategory._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
