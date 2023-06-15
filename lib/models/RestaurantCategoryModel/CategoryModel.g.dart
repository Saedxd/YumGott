// GENERATED CODE - DO NOT MODIFY BY HAND

part of CategoryModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryModel> _$categoryModelSerializer =
    new _$CategoryModelSerializer();

class _$CategoryModelSerializer implements StructuredSerializer<CategoryModel> {
  @override
  final Iterable<Type> types = const [CategoryModel, _$CategoryModel];
  @override
  final String wireName = 'CategoryModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoryListModel)])));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CategoryModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoryListModel)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryModel extends CategoryModel {
  @override
  final String? title;
  @override
  final String? message;
  @override
  final int? code;
  @override
  final BuiltList<CategoryListModel>? data;
  @override
  final int? id;

  factory _$CategoryModel([void Function(CategoryModelBuilder)? updates]) =>
      (new CategoryModelBuilder()..update(updates))._build();

  _$CategoryModel._({this.title, this.message, this.code, this.data, this.id})
      : super._();

  @override
  CategoryModel rebuild(void Function(CategoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryModelBuilder toBuilder() => new CategoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryModel &&
        title == other.title &&
        message == other.message &&
        code == other.code &&
        data == other.data &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryModel')
          ..add('title', title)
          ..add('message', message)
          ..add('code', code)
          ..add('data', data)
          ..add('id', id))
        .toString();
  }
}

class CategoryModelBuilder
    implements Builder<CategoryModel, CategoryModelBuilder> {
  _$CategoryModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ListBuilder<CategoryListModel>? _data;
  ListBuilder<CategoryListModel> get data =>
      _$this._data ??= new ListBuilder<CategoryListModel>();
  set data(ListBuilder<CategoryListModel>? data) => _$this._data = data;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CategoryModelBuilder();

  CategoryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _message = $v.message;
      _code = $v.code;
      _data = $v.data?.toBuilder();
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryModel;
  }

  @override
  void update(void Function(CategoryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryModel build() => _build();

  _$CategoryModel _build() {
    _$CategoryModel _$result;
    try {
      _$result = _$v ??
          new _$CategoryModel._(
              title: title,
              message: message,
              code: code,
              data: _data?.build(),
              id: id);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
