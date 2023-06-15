// GENERATED CODE - DO NOT MODIFY BY HAND

part of GetAllProductsModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetAllProductsModel> _$getAllProductsModelSerializer =
    new _$GetAllProductsModelSerializer();

class _$GetAllProductsModelSerializer
    implements StructuredSerializer<GetAllProductsModel> {
  @override
  final Iterable<Type> types = const [
    GetAllProductsModel,
    _$GetAllProductsModel
  ];
  @override
  final String wireName = 'GetAllProductsModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GetAllProductsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductModel)])));
    }
    return result;
  }

  @override
  GetAllProductsModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetAllProductsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GetAllProductsModel extends GetAllProductsModel {
  @override
  final BuiltList<ProductModel>? data;

  factory _$GetAllProductsModel(
          [void Function(GetAllProductsModelBuilder)? updates]) =>
      (new GetAllProductsModelBuilder()..update(updates))._build();

  _$GetAllProductsModel._({this.data}) : super._();

  @override
  GetAllProductsModel rebuild(
          void Function(GetAllProductsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllProductsModelBuilder toBuilder() =>
      new GetAllProductsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllProductsModel && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAllProductsModel')
          ..add('data', data))
        .toString();
  }
}

class GetAllProductsModelBuilder
    implements Builder<GetAllProductsModel, GetAllProductsModelBuilder> {
  _$GetAllProductsModel? _$v;

  ListBuilder<ProductModel>? _data;
  ListBuilder<ProductModel> get data =>
      _$this._data ??= new ListBuilder<ProductModel>();
  set data(ListBuilder<ProductModel>? data) => _$this._data = data;

  GetAllProductsModelBuilder();

  GetAllProductsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAllProductsModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllProductsModel;
  }

  @override
  void update(void Function(GetAllProductsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllProductsModel build() => _build();

  _$GetAllProductsModel _build() {
    _$GetAllProductsModel _$result;
    try {
      _$result = _$v ?? new _$GetAllProductsModel._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAllProductsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
