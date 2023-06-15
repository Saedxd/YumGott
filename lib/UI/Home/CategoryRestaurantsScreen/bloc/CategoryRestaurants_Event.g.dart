// GENERATED CODE - DO NOT MODIFY BY HAND

part of CategoryRestaurants_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCategoryRestaurants extends GetCategoryRestaurants {
  @override
  final int? Category_ID;

  factory _$GetCategoryRestaurants(
          [void Function(GetCategoryRestaurantsBuilder)? updates]) =>
      (new GetCategoryRestaurantsBuilder()..update(updates))._build();

  _$GetCategoryRestaurants._({this.Category_ID}) : super._();

  @override
  GetCategoryRestaurants rebuild(
          void Function(GetCategoryRestaurantsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCategoryRestaurantsBuilder toBuilder() =>
      new GetCategoryRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCategoryRestaurants && Category_ID == other.Category_ID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Category_ID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCategoryRestaurants')
          ..add('Category_ID', Category_ID))
        .toString();
  }
}

class GetCategoryRestaurantsBuilder
    implements Builder<GetCategoryRestaurants, GetCategoryRestaurantsBuilder> {
  _$GetCategoryRestaurants? _$v;

  int? _Category_ID;
  int? get Category_ID => _$this._Category_ID;
  set Category_ID(int? Category_ID) => _$this._Category_ID = Category_ID;

  GetCategoryRestaurantsBuilder();

  GetCategoryRestaurantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Category_ID = $v.Category_ID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCategoryRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCategoryRestaurants;
  }

  @override
  void update(void Function(GetCategoryRestaurantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCategoryRestaurants build() => _build();

  _$GetCategoryRestaurants _build() {
    final _$result =
        _$v ?? new _$GetCategoryRestaurants._(Category_ID: Category_ID);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
