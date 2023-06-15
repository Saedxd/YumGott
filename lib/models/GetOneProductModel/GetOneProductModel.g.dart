// GENERATED CODE - DO NOT MODIFY BY HAND

part of GetOneProductModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetOneProductModel> _$getOneProductModelSerializer =
    new _$GetOneProductModelSerializer();

class _$GetOneProductModelSerializer
    implements StructuredSerializer<GetOneProductModel> {
  @override
  final Iterable<Type> types = const [GetOneProductModel, _$GetOneProductModel];
  @override
  final String wireName = 'GetOneProductModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GetOneProductModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProductModel)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GetOneProductModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetOneProductModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(ProductModel))! as ProductModel);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GetOneProductModel extends GetOneProductModel {
  @override
  final ProductModel? data;
  @override
  final String? message;
  @override
  final int? code;

  factory _$GetOneProductModel(
          [void Function(GetOneProductModelBuilder)? updates]) =>
      (new GetOneProductModelBuilder()..update(updates))._build();

  _$GetOneProductModel._({this.data, this.message, this.code}) : super._();

  @override
  GetOneProductModel rebuild(
          void Function(GetOneProductModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOneProductModelBuilder toBuilder() =>
      new GetOneProductModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOneProductModel &&
        data == other.data &&
        message == other.message &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetOneProductModel')
          ..add('data', data)
          ..add('message', message)
          ..add('code', code))
        .toString();
  }
}

class GetOneProductModelBuilder
    implements Builder<GetOneProductModel, GetOneProductModelBuilder> {
  _$GetOneProductModel? _$v;

  ProductModelBuilder? _data;
  ProductModelBuilder get data => _$this._data ??= new ProductModelBuilder();
  set data(ProductModelBuilder? data) => _$this._data = data;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  GetOneProductModelBuilder();

  GetOneProductModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _message = $v.message;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOneProductModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOneProductModel;
  }

  @override
  void update(void Function(GetOneProductModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOneProductModel build() => _build();

  _$GetOneProductModel _build() {
    _$GetOneProductModel _$result;
    try {
      _$result = _$v ??
          new _$GetOneProductModel._(
              data: _data?.build(), message: message, code: code);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOneProductModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
