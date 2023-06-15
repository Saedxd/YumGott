// GENERATED CODE - DO NOT MODIFY BY HAND

part of AddProductScreen_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeAppetizersDropDownSize extends ChangeAppetizersDropDownSize {
  @override
  final int? Length;

  factory _$ChangeAppetizersDropDownSize(
          [void Function(ChangeAppetizersDropDownSizeBuilder)? updates]) =>
      (new ChangeAppetizersDropDownSizeBuilder()..update(updates))._build();

  _$ChangeAppetizersDropDownSize._({this.Length}) : super._();

  @override
  ChangeAppetizersDropDownSize rebuild(
          void Function(ChangeAppetizersDropDownSizeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeAppetizersDropDownSizeBuilder toBuilder() =>
      new ChangeAppetizersDropDownSizeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeAppetizersDropDownSize && Length == other.Length;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Length.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeAppetizersDropDownSize')
          ..add('Length', Length))
        .toString();
  }
}

class ChangeAppetizersDropDownSizeBuilder
    implements
        Builder<ChangeAppetizersDropDownSize,
            ChangeAppetizersDropDownSizeBuilder> {
  _$ChangeAppetizersDropDownSize? _$v;

  int? _Length;
  int? get Length => _$this._Length;
  set Length(int? Length) => _$this._Length = Length;

  ChangeAppetizersDropDownSizeBuilder();

  ChangeAppetizersDropDownSizeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Length = $v.Length;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeAppetizersDropDownSize other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeAppetizersDropDownSize;
  }

  @override
  void update(void Function(ChangeAppetizersDropDownSizeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeAppetizersDropDownSize build() => _build();

  _$ChangeAppetizersDropDownSize _build() {
    final _$result =
        _$v ?? new _$ChangeAppetizersDropDownSize._(Length: Length);
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

class _$AddSelectedValues extends AddSelectedValues {
  @override
  final int? index;
  @override
  final List<String>? SelectedList;

  factory _$AddSelectedValues(
          [void Function(AddSelectedValuesBuilder)? updates]) =>
      (new AddSelectedValuesBuilder()..update(updates))._build();

  _$AddSelectedValues._({this.index, this.SelectedList}) : super._();

  @override
  AddSelectedValues rebuild(void Function(AddSelectedValuesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddSelectedValuesBuilder toBuilder() =>
      new AddSelectedValuesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddSelectedValues &&
        index == other.index &&
        SelectedList == other.SelectedList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, SelectedList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddSelectedValues')
          ..add('index', index)
          ..add('SelectedList', SelectedList))
        .toString();
  }
}

class AddSelectedValuesBuilder
    implements Builder<AddSelectedValues, AddSelectedValuesBuilder> {
  _$AddSelectedValues? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  List<String>? _SelectedList;
  List<String>? get SelectedList => _$this._SelectedList;
  set SelectedList(List<String>? SelectedList) =>
      _$this._SelectedList = SelectedList;

  AddSelectedValuesBuilder();

  AddSelectedValuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _SelectedList = $v.SelectedList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddSelectedValues other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddSelectedValues;
  }

  @override
  void update(void Function(AddSelectedValuesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddSelectedValues build() => _build();

  _$AddSelectedValues _build() {
    final _$result = _$v ??
        new _$AddSelectedValues._(index: index, SelectedList: SelectedList);
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

class _$CreateProduct extends CreateProduct {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final double? discount;
  @override
  final File? photo;
  @override
  final List<int>? appetizerIds;
  @override
  final int? category_id;

  factory _$CreateProduct([void Function(CreateProductBuilder)? updates]) =>
      (new CreateProductBuilder()..update(updates))._build();

  _$CreateProduct._(
      {this.name,
      this.description,
      this.price,
      this.discount,
      this.photo,
      this.appetizerIds,
      this.category_id})
      : super._();

  @override
  CreateProduct rebuild(void Function(CreateProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateProductBuilder toBuilder() => new CreateProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProduct &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        discount == other.discount &&
        photo == other.photo &&
        appetizerIds == other.appetizerIds &&
        category_id == other.category_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, appetizerIds.hashCode);
    _$hash = $jc(_$hash, category_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateProduct')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('discount', discount)
          ..add('photo', photo)
          ..add('appetizerIds', appetizerIds)
          ..add('category_id', category_id))
        .toString();
  }
}

class CreateProductBuilder
    implements Builder<CreateProduct, CreateProductBuilder> {
  _$CreateProduct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  File? _photo;
  File? get photo => _$this._photo;
  set photo(File? photo) => _$this._photo = photo;

  List<int>? _appetizerIds;
  List<int>? get appetizerIds => _$this._appetizerIds;
  set appetizerIds(List<int>? appetizerIds) =>
      _$this._appetizerIds = appetizerIds;

  int? _category_id;
  int? get category_id => _$this._category_id;
  set category_id(int? category_id) => _$this._category_id = category_id;

  CreateProductBuilder();

  CreateProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _discount = $v.discount;
      _photo = $v.photo;
      _appetizerIds = $v.appetizerIds;
      _category_id = $v.category_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateProduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateProduct;
  }

  @override
  void update(void Function(CreateProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProduct build() => _build();

  _$CreateProduct _build() {
    final _$result = _$v ??
        new _$CreateProduct._(
            name: name,
            description: description,
            price: price,
            discount: discount,
            photo: photo,
            appetizerIds: appetizerIds,
            category_id: category_id);
    replace(_$result);
    return _$result;
  }
}

class _$GetProductCateogry extends GetProductCateogry {
  factory _$GetProductCateogry(
          [void Function(GetProductCateogryBuilder)? updates]) =>
      (new GetProductCateogryBuilder()..update(updates))._build();

  _$GetProductCateogry._() : super._();

  @override
  GetProductCateogry rebuild(
          void Function(GetProductCateogryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProductCateogryBuilder toBuilder() =>
      new GetProductCateogryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProductCateogry;
  }

  @override
  int get hashCode {
    return 532066684;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetProductCateogry').toString();
  }
}

class GetProductCateogryBuilder
    implements Builder<GetProductCateogry, GetProductCateogryBuilder> {
  _$GetProductCateogry? _$v;

  GetProductCateogryBuilder();

  @override
  void replace(GetProductCateogry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProductCateogry;
  }

  @override
  void update(void Function(GetProductCateogryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetProductCateogry build() => _build();

  _$GetProductCateogry _build() {
    final _$result = _$v ?? new _$GetProductCateogry._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeAppetizersProductsinList extends ChangeAppetizersProductsinList {
  @override
  final String? Value;

  factory _$ChangeAppetizersProductsinList(
          [void Function(ChangeAppetizersProductsinListBuilder)? updates]) =>
      (new ChangeAppetizersProductsinListBuilder()..update(updates))._build();

  _$ChangeAppetizersProductsinList._({this.Value}) : super._();

  @override
  ChangeAppetizersProductsinList rebuild(
          void Function(ChangeAppetizersProductsinListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeAppetizersProductsinListBuilder toBuilder() =>
      new ChangeAppetizersProductsinListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeAppetizersProductsinList && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeAppetizersProductsinList')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeAppetizersProductsinListBuilder
    implements
        Builder<ChangeAppetizersProductsinList,
            ChangeAppetizersProductsinListBuilder> {
  _$ChangeAppetizersProductsinList? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeAppetizersProductsinListBuilder();

  ChangeAppetizersProductsinListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeAppetizersProductsinList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeAppetizersProductsinList;
  }

  @override
  void update(void Function(ChangeAppetizersProductsinListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeAppetizersProductsinList build() => _build();

  _$ChangeAppetizersProductsinList _build() {
    final _$result =
        _$v ?? new _$ChangeAppetizersProductsinList._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeSelectedBranch extends ChangeSelectedBranch {
  @override
  final String? Value;

  factory _$ChangeSelectedBranch(
          [void Function(ChangeSelectedBranchBuilder)? updates]) =>
      (new ChangeSelectedBranchBuilder()..update(updates))._build();

  _$ChangeSelectedBranch._({this.Value}) : super._();

  @override
  ChangeSelectedBranch rebuild(
          void Function(ChangeSelectedBranchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedBranchBuilder toBuilder() =>
      new ChangeSelectedBranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedBranch && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeSelectedBranch')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeSelectedBranchBuilder
    implements Builder<ChangeSelectedBranch, ChangeSelectedBranchBuilder> {
  _$ChangeSelectedBranch? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeSelectedBranchBuilder();

  ChangeSelectedBranchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedBranch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedBranch;
  }

  @override
  void update(void Function(ChangeSelectedBranchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedBranch build() => _build();

  _$ChangeSelectedBranch _build() {
    final _$result = _$v ?? new _$ChangeSelectedBranch._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$EmptyList extends EmptyList {
  factory _$EmptyList([void Function(EmptyListBuilder)? updates]) =>
      (new EmptyListBuilder()..update(updates))._build();

  _$EmptyList._() : super._();

  @override
  EmptyList rebuild(void Function(EmptyListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmptyListBuilder toBuilder() => new EmptyListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmptyList;
  }

  @override
  int get hashCode {
    return 124757084;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'EmptyList').toString();
  }
}

class EmptyListBuilder implements Builder<EmptyList, EmptyListBuilder> {
  _$EmptyList? _$v;

  EmptyListBuilder();

  @override
  void replace(EmptyList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmptyList;
  }

  @override
  void update(void Function(EmptyListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmptyList build() => _build();

  _$EmptyList _build() {
    final _$result = _$v ?? new _$EmptyList._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
