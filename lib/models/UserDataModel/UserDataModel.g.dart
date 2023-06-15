// GENERATED CODE - DO NOT MODIFY BY HAND

part of UserDataModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserDataModel> _$userDataModelSerializer =
    new _$UserDataModelSerializer();

class _$UserDataModelSerializer implements StructuredSerializer<UserDataModel> {
  @override
  final Iterable<Type> types = const [UserDataModel, _$UserDataModel];
  @override
  final String wireName = 'UserDataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserDataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.access_token;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.token_type;
    if (value != null) {
      result
        ..add('token_type')
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
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DataModel)));
    }
    return result;
  }

  @override
  UserDataModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserDataModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'token_type':
          result.token_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(DataModel))! as DataModel);
          break;
      }
    }

    return result.build();
  }
}

class _$UserDataModel extends UserDataModel {
  @override
  final int? code;
  @override
  final String? access_token;
  @override
  final String? token_type;
  @override
  final String? message;
  @override
  final DataModel? data;

  factory _$UserDataModel([void Function(UserDataModelBuilder)? updates]) =>
      (new UserDataModelBuilder()..update(updates))._build();

  _$UserDataModel._(
      {this.code, this.access_token, this.token_type, this.message, this.data})
      : super._();

  @override
  UserDataModel rebuild(void Function(UserDataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataModelBuilder toBuilder() => new UserDataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDataModel &&
        code == other.code &&
        access_token == other.access_token &&
        token_type == other.token_type &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, access_token.hashCode);
    _$hash = $jc(_$hash, token_type.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDataModel')
          ..add('code', code)
          ..add('access_token', access_token)
          ..add('token_type', token_type)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class UserDataModelBuilder
    implements Builder<UserDataModel, UserDataModelBuilder> {
  _$UserDataModel? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _access_token;
  String? get access_token => _$this._access_token;
  set access_token(String? access_token) => _$this._access_token = access_token;

  String? _token_type;
  String? get token_type => _$this._token_type;
  set token_type(String? token_type) => _$this._token_type = token_type;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DataModelBuilder? _data;
  DataModelBuilder get data => _$this._data ??= new DataModelBuilder();
  set data(DataModelBuilder? data) => _$this._data = data;

  UserDataModelBuilder();

  UserDataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _access_token = $v.access_token;
      _token_type = $v.token_type;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDataModel;
  }

  @override
  void update(void Function(UserDataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDataModel build() => _build();

  _$UserDataModel _build() {
    _$UserDataModel _$result;
    try {
      _$result = _$v ??
          new _$UserDataModel._(
              code: code,
              access_token: access_token,
              token_type: token_type,
              message: message,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserDataModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
