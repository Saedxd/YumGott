// GENERATED CODE - DO NOT MODIFY BY HAND

part of RestaurantsScreen_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAllRestaurants extends GetAllRestaurants {
  factory _$GetAllRestaurants(
          [void Function(GetAllRestaurantsBuilder)? updates]) =>
      (new GetAllRestaurantsBuilder()..update(updates))._build();

  _$GetAllRestaurants._() : super._();

  @override
  GetAllRestaurants rebuild(void Function(GetAllRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllRestaurantsBuilder toBuilder() =>
      new GetAllRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllRestaurants;
  }

  @override
  int get hashCode {
    return 992405388;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllRestaurants').toString();
  }
}

class GetAllRestaurantsBuilder
    implements Builder<GetAllRestaurants, GetAllRestaurantsBuilder> {
  _$GetAllRestaurants? _$v;

  GetAllRestaurantsBuilder();

  @override
  void replace(GetAllRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllRestaurants;
  }

  @override
  void update(void Function(GetAllRestaurantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllRestaurants build() => _build();

  _$GetAllRestaurants _build() {
    final _$result = _$v ?? new _$GetAllRestaurants._();
    replace(_$result);
    return _$result;
  }
}

class _$GetAllCategories extends GetAllCategories {
  factory _$GetAllCategories(
          [void Function(GetAllCategoriesBuilder)? updates]) =>
      (new GetAllCategoriesBuilder()..update(updates))._build();

  _$GetAllCategories._() : super._();

  @override
  GetAllCategories rebuild(void Function(GetAllCategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllCategoriesBuilder toBuilder() =>
      new GetAllCategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllCategories;
  }

  @override
  int get hashCode {
    return 785712502;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllCategories').toString();
  }
}

class GetAllCategoriesBuilder
    implements Builder<GetAllCategories, GetAllCategoriesBuilder> {
  _$GetAllCategories? _$v;

  GetAllCategoriesBuilder();

  @override
  void replace(GetAllCategories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllCategories;
  }

  @override
  void update(void Function(GetAllCategoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllCategories build() => _build();

  _$GetAllCategories _build() {
    final _$result = _$v ?? new _$GetAllCategories._();
    replace(_$result);
    return _$result;
  }
}

class _$FilterRestaurants extends FilterRestaurants {
  @override
  final String? Keyword;

  factory _$FilterRestaurants(
          [void Function(FilterRestaurantsBuilder)? updates]) =>
      (new FilterRestaurantsBuilder()..update(updates))._build();

  _$FilterRestaurants._({this.Keyword}) : super._();

  @override
  FilterRestaurants rebuild(void Function(FilterRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterRestaurantsBuilder toBuilder() =>
      new FilterRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterRestaurants && Keyword == other.Keyword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Keyword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterRestaurants')
          ..add('Keyword', Keyword))
        .toString();
  }
}

class FilterRestaurantsBuilder
    implements Builder<FilterRestaurants, FilterRestaurantsBuilder> {
  _$FilterRestaurants? _$v;

  String? _Keyword;
  String? get Keyword => _$this._Keyword;
  set Keyword(String? Keyword) => _$this._Keyword = Keyword;

  FilterRestaurantsBuilder();

  FilterRestaurantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Keyword = $v.Keyword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterRestaurants;
  }

  @override
  void update(void Function(FilterRestaurantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterRestaurants build() => _build();

  _$FilterRestaurants _build() {
    final _$result = _$v ?? new _$FilterRestaurants._(Keyword: Keyword);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeSelectedCity extends ChangeSelectedCity {
  @override
  final String? value;

  factory _$ChangeSelectedCity(
          [void Function(ChangeSelectedCityBuilder)? updates]) =>
      (new ChangeSelectedCityBuilder()..update(updates))._build();

  _$ChangeSelectedCity._({this.value}) : super._();

  @override
  ChangeSelectedCity rebuild(
          void Function(ChangeSelectedCityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedCityBuilder toBuilder() =>
      new ChangeSelectedCityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedCity && value == other.value;
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
    return (newBuiltValueToStringHelper(r'ChangeSelectedCity')
          ..add('value', value))
        .toString();
  }
}

class ChangeSelectedCityBuilder
    implements Builder<ChangeSelectedCity, ChangeSelectedCityBuilder> {
  _$ChangeSelectedCity? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ChangeSelectedCityBuilder();

  ChangeSelectedCityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedCity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedCity;
  }

  @override
  void update(void Function(ChangeSelectedCityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedCity build() => _build();

  _$ChangeSelectedCity _build() {
    final _$result = _$v ?? new _$ChangeSelectedCity._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
