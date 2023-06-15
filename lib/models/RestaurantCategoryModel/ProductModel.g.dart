// GENERATED CODE - DO NOT MODIFY BY HAND

part of ProductModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductModel> _$productModelSerializer =
    new _$ProductModelSerializer();

class _$ProductModelSerializer implements StructuredSerializer<ProductModel> {
  @override
  final Iterable<Type> types = const [ProductModel, _$ProductModel];
  @override
  final String wireName = 'ProductModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user_id;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category_id;
    if (value != null) {
      result
        ..add('category_id')
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo_main;
    if (value != null) {
      result
        ..add('photo_main')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_active;
    if (value != null) {
      result
        ..add('is_active')
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
    value = object.updated_at;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DataModel)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CategoryListModel)));
    }
    value = object.appetizers;
    if (value != null) {
      result
        ..add('appetizers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoryListModel)])));
    }
    return result;
  }

  @override
  ProductModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user_id':
          result.user_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category_id':
          result.category_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_main':
          result.photo_main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.is_active = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(DataModel))! as DataModel);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CategoryListModel))!
              as CategoryListModel);
          break;
        case 'appetizers':
          result.appetizers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoryListModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductModel extends ProductModel {
  @override
  final int? id;
  @override
  final String? user_id;
  @override
  final String? category_id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final String? discount;
  @override
  final String? photo_main;
  @override
  final String? is_active;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final DataModel? user;
  @override
  final CategoryListModel? category;
  @override
  final BuiltList<CategoryListModel>? appetizers;

  factory _$ProductModel([void Function(ProductModelBuilder)? updates]) =>
      (new ProductModelBuilder()..update(updates))._build();

  _$ProductModel._(
      {this.id,
      this.user_id,
      this.category_id,
      this.name,
      this.description,
      this.price,
      this.discount,
      this.photo_main,
      this.is_active,
      this.created_at,
      this.updated_at,
      this.user,
      this.category,
      this.appetizers})
      : super._();

  @override
  ProductModel rebuild(void Function(ProductModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductModelBuilder toBuilder() => new ProductModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductModel &&
        id == other.id &&
        user_id == other.user_id &&
        category_id == other.category_id &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        discount == other.discount &&
        photo_main == other.photo_main &&
        is_active == other.is_active &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        user == other.user &&
        category == other.category &&
        appetizers == other.appetizers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, user_id.hashCode);
    _$hash = $jc(_$hash, category_id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, photo_main.hashCode);
    _$hash = $jc(_$hash, is_active.hashCode);
    _$hash = $jc(_$hash, created_at.hashCode);
    _$hash = $jc(_$hash, updated_at.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, appetizers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductModel')
          ..add('id', id)
          ..add('user_id', user_id)
          ..add('category_id', category_id)
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('discount', discount)
          ..add('photo_main', photo_main)
          ..add('is_active', is_active)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('user', user)
          ..add('category', category)
          ..add('appetizers', appetizers))
        .toString();
  }
}

class ProductModelBuilder
    implements Builder<ProductModel, ProductModelBuilder> {
  _$ProductModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _user_id;
  String? get user_id => _$this._user_id;
  set user_id(String? user_id) => _$this._user_id = user_id;

  String? _category_id;
  String? get category_id => _$this._category_id;
  set category_id(String? category_id) => _$this._category_id = category_id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _discount;
  String? get discount => _$this._discount;
  set discount(String? discount) => _$this._discount = discount;

  String? _photo_main;
  String? get photo_main => _$this._photo_main;
  set photo_main(String? photo_main) => _$this._photo_main = photo_main;

  String? _is_active;
  String? get is_active => _$this._is_active;
  set is_active(String? is_active) => _$this._is_active = is_active;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  DataModelBuilder? _user;
  DataModelBuilder get user => _$this._user ??= new DataModelBuilder();
  set user(DataModelBuilder? user) => _$this._user = user;

  CategoryListModelBuilder? _category;
  CategoryListModelBuilder get category =>
      _$this._category ??= new CategoryListModelBuilder();
  set category(CategoryListModelBuilder? category) =>
      _$this._category = category;

  ListBuilder<CategoryListModel>? _appetizers;
  ListBuilder<CategoryListModel> get appetizers =>
      _$this._appetizers ??= new ListBuilder<CategoryListModel>();
  set appetizers(ListBuilder<CategoryListModel>? appetizers) =>
      _$this._appetizers = appetizers;

  ProductModelBuilder();

  ProductModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _user_id = $v.user_id;
      _category_id = $v.category_id;
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _discount = $v.discount;
      _photo_main = $v.photo_main;
      _is_active = $v.is_active;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _user = $v.user?.toBuilder();
      _category = $v.category?.toBuilder();
      _appetizers = $v.appetizers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductModel;
  }

  @override
  void update(void Function(ProductModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductModel build() => _build();

  _$ProductModel _build() {
    _$ProductModel _$result;
    try {
      _$result = _$v ??
          new _$ProductModel._(
              id: id,
              user_id: user_id,
              category_id: category_id,
              name: name,
              description: description,
              price: price,
              discount: discount,
              photo_main: photo_main,
              is_active: is_active,
              created_at: created_at,
              updated_at: updated_at,
              user: _user?.build(),
              category: _category?.build(),
              appetizers: _appetizers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'appetizers';
        _appetizers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProductModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
