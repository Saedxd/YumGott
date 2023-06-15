// GENERATED CODE - DO NOT MODIFY BY HAND

part of HomePage_Event;

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

class _$GetReels extends GetReels {
  factory _$GetReels([void Function(GetReelsBuilder)? updates]) =>
      (new GetReelsBuilder()..update(updates))._build();

  _$GetReels._() : super._();

  @override
  GetReels rebuild(void Function(GetReelsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetReelsBuilder toBuilder() => new GetReelsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetReels;
  }

  @override
  int get hashCode {
    return 895867927;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetReels').toString();
  }
}

class GetReelsBuilder implements Builder<GetReels, GetReelsBuilder> {
  _$GetReels? _$v;

  GetReelsBuilder();

  @override
  void replace(GetReels other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetReels;
  }

  @override
  void update(void Function(GetReelsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetReels build() => _build();

  _$GetReels _build() {
    final _$result = _$v ?? new _$GetReels._();
    replace(_$result);
    return _$result;
  }
}

class _$FilterProducts extends FilterProducts {
  @override
  final String? Keyword;
  @override
  final int? Price_index;

  factory _$FilterProducts([void Function(FilterProductsBuilder)? updates]) =>
      (new FilterProductsBuilder()..update(updates))._build();

  _$FilterProducts._({this.Keyword, this.Price_index}) : super._();

  @override
  FilterProducts rebuild(void Function(FilterProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterProductsBuilder toBuilder() =>
      new FilterProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterProducts &&
        Keyword == other.Keyword &&
        Price_index == other.Price_index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Keyword.hashCode);
    _$hash = $jc(_$hash, Price_index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterProducts')
          ..add('Keyword', Keyword)
          ..add('Price_index', Price_index))
        .toString();
  }
}

class FilterProductsBuilder
    implements Builder<FilterProducts, FilterProductsBuilder> {
  _$FilterProducts? _$v;

  String? _Keyword;
  String? get Keyword => _$this._Keyword;
  set Keyword(String? Keyword) => _$this._Keyword = Keyword;

  int? _Price_index;
  int? get Price_index => _$this._Price_index;
  set Price_index(int? Price_index) => _$this._Price_index = Price_index;

  FilterProductsBuilder();

  FilterProductsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Keyword = $v.Keyword;
      _Price_index = $v.Price_index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterProducts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterProducts;
  }

  @override
  void update(void Function(FilterProductsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterProducts build() => _build();

  _$FilterProducts _build() {
    final _$result = _$v ??
        new _$FilterProducts._(Keyword: Keyword, Price_index: Price_index);
    replace(_$result);
    return _$result;
  }
}

class _$GetAllProducts extends GetAllProducts {
  factory _$GetAllProducts([void Function(GetAllProductsBuilder)? updates]) =>
      (new GetAllProductsBuilder()..update(updates))._build();

  _$GetAllProducts._() : super._();

  @override
  GetAllProducts rebuild(void Function(GetAllProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllProductsBuilder toBuilder() =>
      new GetAllProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllProducts;
  }

  @override
  int get hashCode {
    return 11634963;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllProducts').toString();
  }
}

class GetAllProductsBuilder
    implements Builder<GetAllProducts, GetAllProductsBuilder> {
  _$GetAllProducts? _$v;

  GetAllProductsBuilder();

  @override
  void replace(GetAllProducts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllProducts;
  }

  @override
  void update(void Function(GetAllProductsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllProducts build() => _build();

  _$GetAllProducts _build() {
    final _$result = _$v ?? new _$GetAllProducts._();
    replace(_$result);
    return _$result;
  }
}

class _$SendLocationTobackend extends SendLocationTobackend {
  @override
  final double? Lat;
  @override
  final double? Lng;
  @override
  final String? Location;

  factory _$SendLocationTobackend(
          [void Function(SendLocationTobackendBuilder)? updates]) =>
      (new SendLocationTobackendBuilder()..update(updates))._build();

  _$SendLocationTobackend._({this.Lat, this.Lng, this.Location}) : super._();

  @override
  SendLocationTobackend rebuild(
          void Function(SendLocationTobackendBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendLocationTobackendBuilder toBuilder() =>
      new SendLocationTobackendBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendLocationTobackend &&
        Lat == other.Lat &&
        Lng == other.Lng &&
        Location == other.Location;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Lat.hashCode);
    _$hash = $jc(_$hash, Lng.hashCode);
    _$hash = $jc(_$hash, Location.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendLocationTobackend')
          ..add('Lat', Lat)
          ..add('Lng', Lng)
          ..add('Location', Location))
        .toString();
  }
}

class SendLocationTobackendBuilder
    implements Builder<SendLocationTobackend, SendLocationTobackendBuilder> {
  _$SendLocationTobackend? _$v;

  double? _Lat;
  double? get Lat => _$this._Lat;
  set Lat(double? Lat) => _$this._Lat = Lat;

  double? _Lng;
  double? get Lng => _$this._Lng;
  set Lng(double? Lng) => _$this._Lng = Lng;

  String? _Location;
  String? get Location => _$this._Location;
  set Location(String? Location) => _$this._Location = Location;

  SendLocationTobackendBuilder();

  SendLocationTobackendBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Lat = $v.Lat;
      _Lng = $v.Lng;
      _Location = $v.Location;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendLocationTobackend other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendLocationTobackend;
  }

  @override
  void update(void Function(SendLocationTobackendBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendLocationTobackend build() => _build();

  _$SendLocationTobackend _build() {
    final _$result = _$v ??
        new _$SendLocationTobackend._(Lat: Lat, Lng: Lng, Location: Location);
    replace(_$result);
    return _$result;
  }
}

class _$ChangePolicyContainerApperiance
    extends ChangePolicyContainerApperiance {
  @override
  final bool? value;

  factory _$ChangePolicyContainerApperiance(
          [void Function(ChangePolicyContainerApperianceBuilder)? updates]) =>
      (new ChangePolicyContainerApperianceBuilder()..update(updates))._build();

  _$ChangePolicyContainerApperiance._({this.value}) : super._();

  @override
  ChangePolicyContainerApperiance rebuild(
          void Function(ChangePolicyContainerApperianceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePolicyContainerApperianceBuilder toBuilder() =>
      new ChangePolicyContainerApperianceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePolicyContainerApperiance && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePolicyContainerApperiance')
          ..add('value', value))
        .toString();
  }
}

class ChangePolicyContainerApperianceBuilder
    implements
        Builder<ChangePolicyContainerApperiance,
            ChangePolicyContainerApperianceBuilder> {
  _$ChangePolicyContainerApperiance? _$v;

  bool? _value;
  bool? get value => _$this._value;
  set value(bool? value) => _$this._value = value;

  ChangePolicyContainerApperianceBuilder();

  ChangePolicyContainerApperianceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePolicyContainerApperiance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePolicyContainerApperiance;
  }

  @override
  void update(void Function(ChangePolicyContainerApperianceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePolicyContainerApperiance build() => _build();

  _$ChangePolicyContainerApperiance _build() {
    final _$result =
        _$v ?? new _$ChangePolicyContainerApperiance._(value: value);
    replace(_$result);
    return _$result;
  }
}

class _$SwitchSaveButton extends SwitchSaveButton {
  @override
  final String? ID;
  @override
  final int? index;

  factory _$SwitchSaveButton(
          [void Function(SwitchSaveButtonBuilder)? updates]) =>
      (new SwitchSaveButtonBuilder()..update(updates))._build();

  _$SwitchSaveButton._({this.ID, this.index}) : super._();

  @override
  SwitchSaveButton rebuild(void Function(SwitchSaveButtonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SwitchSaveButtonBuilder toBuilder() =>
      new SwitchSaveButtonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwitchSaveButton && ID == other.ID && index == other.index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ID.hashCode);
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SwitchSaveButton')
          ..add('ID', ID)
          ..add('index', index))
        .toString();
  }
}

class SwitchSaveButtonBuilder
    implements Builder<SwitchSaveButton, SwitchSaveButtonBuilder> {
  _$SwitchSaveButton? _$v;

  String? _ID;
  String? get ID => _$this._ID;
  set ID(String? ID) => _$this._ID = ID;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  SwitchSaveButtonBuilder();

  SwitchSaveButtonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ID = $v.ID;
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwitchSaveButton other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SwitchSaveButton;
  }

  @override
  void update(void Function(SwitchSaveButtonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SwitchSaveButton build() => _build();

  _$SwitchSaveButton _build() {
    final _$result = _$v ?? new _$SwitchSaveButton._(ID: ID, index: index);
    replace(_$result);
    return _$result;
  }
}

class _$SwitchLikeBUtton extends SwitchLikeBUtton {
  @override
  final int? index;
  @override
  final String? important_id;
  @override
  final String? received_user;
  @override
  final String? MyUsername;

  factory _$SwitchLikeBUtton(
          [void Function(SwitchLikeBUttonBuilder)? updates]) =>
      (new SwitchLikeBUttonBuilder()..update(updates))._build();

  _$SwitchLikeBUtton._(
      {this.index, this.important_id, this.received_user, this.MyUsername})
      : super._();

  @override
  SwitchLikeBUtton rebuild(void Function(SwitchLikeBUttonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SwitchLikeBUttonBuilder toBuilder() =>
      new SwitchLikeBUttonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwitchLikeBUtton &&
        index == other.index &&
        important_id == other.important_id &&
        received_user == other.received_user &&
        MyUsername == other.MyUsername;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, important_id.hashCode);
    _$hash = $jc(_$hash, received_user.hashCode);
    _$hash = $jc(_$hash, MyUsername.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SwitchLikeBUtton')
          ..add('index', index)
          ..add('important_id', important_id)
          ..add('received_user', received_user)
          ..add('MyUsername', MyUsername))
        .toString();
  }
}

class SwitchLikeBUttonBuilder
    implements Builder<SwitchLikeBUtton, SwitchLikeBUttonBuilder> {
  _$SwitchLikeBUtton? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _important_id;
  String? get important_id => _$this._important_id;
  set important_id(String? important_id) => _$this._important_id = important_id;

  String? _received_user;
  String? get received_user => _$this._received_user;
  set received_user(String? received_user) =>
      _$this._received_user = received_user;

  String? _MyUsername;
  String? get MyUsername => _$this._MyUsername;
  set MyUsername(String? MyUsername) => _$this._MyUsername = MyUsername;

  SwitchLikeBUttonBuilder();

  SwitchLikeBUttonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _important_id = $v.important_id;
      _received_user = $v.received_user;
      _MyUsername = $v.MyUsername;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwitchLikeBUtton other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SwitchLikeBUtton;
  }

  @override
  void update(void Function(SwitchLikeBUttonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SwitchLikeBUtton build() => _build();

  _$SwitchLikeBUtton _build() {
    final _$result = _$v ??
        new _$SwitchLikeBUtton._(
            index: index,
            important_id: important_id,
            received_user: received_user,
            MyUsername: MyUsername);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeSelectedPriceValue extends ChangeSelectedPriceValue {
  @override
  final String? value;
  @override
  final int? Price_index;

  factory _$ChangeSelectedPriceValue(
          [void Function(ChangeSelectedPriceValueBuilder)? updates]) =>
      (new ChangeSelectedPriceValueBuilder()..update(updates))._build();

  _$ChangeSelectedPriceValue._({this.value, this.Price_index}) : super._();

  @override
  ChangeSelectedPriceValue rebuild(
          void Function(ChangeSelectedPriceValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedPriceValueBuilder toBuilder() =>
      new ChangeSelectedPriceValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedPriceValue &&
        value == other.value &&
        Price_index == other.Price_index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, Price_index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeSelectedPriceValue')
          ..add('value', value)
          ..add('Price_index', Price_index))
        .toString();
  }
}

class ChangeSelectedPriceValueBuilder
    implements
        Builder<ChangeSelectedPriceValue, ChangeSelectedPriceValueBuilder> {
  _$ChangeSelectedPriceValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  int? _Price_index;
  int? get Price_index => _$this._Price_index;
  set Price_index(int? Price_index) => _$this._Price_index = Price_index;

  ChangeSelectedPriceValueBuilder();

  ChangeSelectedPriceValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _Price_index = $v.Price_index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedPriceValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedPriceValue;
  }

  @override
  void update(void Function(ChangeSelectedPriceValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedPriceValue build() => _build();

  _$ChangeSelectedPriceValue _build() {
    final _$result = _$v ??
        new _$ChangeSelectedPriceValue._(
            value: value, Price_index: Price_index);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeSelectedEvaluationValue extends ChangeSelectedEvaluationValue {
  @override
  final String? value;
  @override
  final int? Price_index;

  factory _$ChangeSelectedEvaluationValue(
          [void Function(ChangeSelectedEvaluationValueBuilder)? updates]) =>
      (new ChangeSelectedEvaluationValueBuilder()..update(updates))._build();

  _$ChangeSelectedEvaluationValue._({this.value, this.Price_index}) : super._();

  @override
  ChangeSelectedEvaluationValue rebuild(
          void Function(ChangeSelectedEvaluationValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedEvaluationValueBuilder toBuilder() =>
      new ChangeSelectedEvaluationValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedEvaluationValue &&
        value == other.value &&
        Price_index == other.Price_index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, Price_index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeSelectedEvaluationValue')
          ..add('value', value)
          ..add('Price_index', Price_index))
        .toString();
  }
}

class ChangeSelectedEvaluationValueBuilder
    implements
        Builder<ChangeSelectedEvaluationValue,
            ChangeSelectedEvaluationValueBuilder> {
  _$ChangeSelectedEvaluationValue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  int? _Price_index;
  int? get Price_index => _$this._Price_index;
  set Price_index(int? Price_index) => _$this._Price_index = Price_index;

  ChangeSelectedEvaluationValueBuilder();

  ChangeSelectedEvaluationValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _Price_index = $v.Price_index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedEvaluationValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedEvaluationValue;
  }

  @override
  void update(void Function(ChangeSelectedEvaluationValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedEvaluationValue build() => _build();

  _$ChangeSelectedEvaluationValue _build() {
    final _$result = _$v ??
        new _$ChangeSelectedEvaluationValue._(
            value: value, Price_index: Price_index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
