// GENERATED CODE - DO NOT MODIFY BY HAND

part of AppetizerModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppetizerModel> _$appetizerModelSerializer =
    new _$AppetizerModelSerializer();

class _$AppetizerModelSerializer
    implements StructuredSerializer<AppetizerModel> {
  @override
  final Iterable<Type> types = const [AppetizerModel, _$AppetizerModel];
  @override
  final String wireName = 'AppetizerModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppetizerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.appetizer_id;
    if (value != null) {
      result
        ..add('appetizer_id')
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
    value = object.info;
    if (value != null) {
      result
        ..add('info')
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
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    return result;
  }

  @override
  AppetizerModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppetizerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appetizer_id':
          result.appetizer_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_at':
          result.created_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppetizerModel extends AppetizerModel {
  @override
  final String? appetizer_id;
  @override
  final String? name;
  @override
  final String? info;
  @override
  final String? price;
  @override
  final int? id;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  factory _$AppetizerModel([void Function(AppetizerModelBuilder)? updates]) =>
      (new AppetizerModelBuilder()..update(updates))._build();

  _$AppetizerModel._(
      {this.appetizer_id,
      this.name,
      this.info,
      this.price,
      this.id,
      this.created_at,
      this.updated_at})
      : super._();

  @override
  AppetizerModel rebuild(void Function(AppetizerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppetizerModelBuilder toBuilder() =>
      new AppetizerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppetizerModel &&
        appetizer_id == other.appetizer_id &&
        name == other.name &&
        info == other.info &&
        price == other.price &&
        id == other.id &&
        created_at == other.created_at &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appetizer_id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, created_at.hashCode);
    _$hash = $jc(_$hash, updated_at.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppetizerModel')
          ..add('appetizer_id', appetizer_id)
          ..add('name', name)
          ..add('info', info)
          ..add('price', price)
          ..add('id', id)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class AppetizerModelBuilder
    implements Builder<AppetizerModel, AppetizerModelBuilder> {
  _$AppetizerModel? _$v;

  String? _appetizer_id;
  String? get appetizer_id => _$this._appetizer_id;
  set appetizer_id(String? appetizer_id) => _$this._appetizer_id = appetizer_id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  AppetizerModelBuilder();

  AppetizerModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appetizer_id = $v.appetizer_id;
      _name = $v.name;
      _info = $v.info;
      _price = $v.price;
      _id = $v.id;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppetizerModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppetizerModel;
  }

  @override
  void update(void Function(AppetizerModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppetizerModel build() => _build();

  _$AppetizerModel _build() {
    final _$result = _$v ??
        new _$AppetizerModel._(
            appetizer_id: appetizer_id,
            name: name,
            info: info,
            price: price,
            id: id,
            created_at: created_at,
            updated_at: updated_at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
