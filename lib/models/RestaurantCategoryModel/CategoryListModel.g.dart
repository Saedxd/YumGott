// GENERATED CODE - DO NOT MODIFY BY HAND

part of CategoryListModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryListModel> _$categoryListModelSerializer =
    new _$CategoryListModelSerializer();

class _$CategoryListModelSerializer
    implements StructuredSerializer<CategoryListModel> {
  @override
  final Iterable<Type> types = const [CategoryListModel, _$CategoryListModel];
  @override
  final String wireName = 'CategoryListModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.is_appetizers;
    if (value != null) {
      result
        ..add('is_appetizers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created_at;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.meals;
    if (value != null) {
      result
        ..add('meals')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductModel)])));
    }
    value = object.appetizers;
    if (value != null) {
      result
        ..add('appetizers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppetizerModel)])));
    }
    return result;
  }

  @override
  CategoryListModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryListModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_appetizers':
          result.is_appetizers = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'meals':
          result.meals.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductModel)]))!
              as BuiltList<Object?>);
          break;
        case 'appetizers':
          result.appetizers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppetizerModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryListModel extends CategoryListModel {
  @override
  final String? is_appetizers;
  @override
  final String? created_at;
  @override
  final String? name;
  @override
  final int? id;
  @override
  final BuiltList<ProductModel>? meals;
  @override
  final BuiltList<AppetizerModel>? appetizers;

  factory _$CategoryListModel(
          [void Function(CategoryListModelBuilder)? updates]) =>
      (new CategoryListModelBuilder()..update(updates))._build();

  _$CategoryListModel._(
      {this.is_appetizers,
      this.created_at,
      this.name,
      this.id,
      this.meals,
      this.appetizers})
      : super._();

  @override
  CategoryListModel rebuild(void Function(CategoryListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryListModelBuilder toBuilder() =>
      new CategoryListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryListModel &&
        is_appetizers == other.is_appetizers &&
        created_at == other.created_at &&
        name == other.name &&
        id == other.id &&
        meals == other.meals &&
        appetizers == other.appetizers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, is_appetizers.hashCode);
    _$hash = $jc(_$hash, created_at.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, meals.hashCode);
    _$hash = $jc(_$hash, appetizers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryListModel')
          ..add('is_appetizers', is_appetizers)
          ..add('created_at', created_at)
          ..add('name', name)
          ..add('id', id)
          ..add('meals', meals)
          ..add('appetizers', appetizers))
        .toString();
  }
}

class CategoryListModelBuilder
    implements Builder<CategoryListModel, CategoryListModelBuilder> {
  _$CategoryListModel? _$v;

  String? _is_appetizers;
  String? get is_appetizers => _$this._is_appetizers;
  set is_appetizers(String? is_appetizers) =>
      _$this._is_appetizers = is_appetizers;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<ProductModel>? _meals;
  ListBuilder<ProductModel> get meals =>
      _$this._meals ??= new ListBuilder<ProductModel>();
  set meals(ListBuilder<ProductModel>? meals) => _$this._meals = meals;

  ListBuilder<AppetizerModel>? _appetizers;
  ListBuilder<AppetizerModel> get appetizers =>
      _$this._appetizers ??= new ListBuilder<AppetizerModel>();
  set appetizers(ListBuilder<AppetizerModel>? appetizers) =>
      _$this._appetizers = appetizers;

  CategoryListModelBuilder();

  CategoryListModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _is_appetizers = $v.is_appetizers;
      _created_at = $v.created_at;
      _name = $v.name;
      _id = $v.id;
      _meals = $v.meals?.toBuilder();
      _appetizers = $v.appetizers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryListModel;
  }

  @override
  void update(void Function(CategoryListModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryListModel build() => _build();

  _$CategoryListModel _build() {
    _$CategoryListModel _$result;
    try {
      _$result = _$v ??
          new _$CategoryListModel._(
              is_appetizers: is_appetizers,
              created_at: created_at,
              name: name,
              id: id,
              meals: _meals?.build(),
              appetizers: _appetizers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meals';
        _meals?.build();
        _$failedField = 'appetizers';
        _appetizers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoryListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
