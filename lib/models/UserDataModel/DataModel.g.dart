// GENERATED CODE - DO NOT MODIFY BY HAND

part of DataModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DataModel> _$dataModelSerializer = new _$DataModelSerializer();

class _$DataModelSerializer implements StructuredSerializer<DataModel> {
  @override
  final Iterable<Type> types = const [DataModel, _$DataModel];
  @override
  final String wireName = 'DataModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobile_number;
    if (value != null) {
      result
        ..add('mobile_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fcm_token;
    if (value != null) {
      result
        ..add('fcm_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_restaurant;
    if (value != null) {
      result
        ..add('is_restaurant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email_verified_at;
    if (value != null) {
      result
        ..add('email_verified_at')
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
    value = object.Token;
    if (value != null) {
      result
        ..add('Token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DataModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataModelBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobile_number':
          result.mobile_number = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fcm_token':
          result.fcm_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_restaurant':
          result.is_restaurant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email_verified_at':
          result.email_verified_at = serializers.deserialize(value,
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
        case 'Token':
          result.Token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$DataModel extends DataModel {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? mobile_number;
  @override
  final String? fcm_token;
  @override
  final String? photo;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? is_restaurant;
  @override
  final String? email_verified_at;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? Token;

  factory _$DataModel([void Function(DataModelBuilder)? updates]) =>
      (new DataModelBuilder()..update(updates))._build();

  _$DataModel._(
      {this.id,
      this.name,
      this.email,
      this.mobile_number,
      this.fcm_token,
      this.photo,
      this.latitude,
      this.longitude,
      this.is_restaurant,
      this.email_verified_at,
      this.created_at,
      this.updated_at,
      this.Token})
      : super._();

  @override
  DataModel rebuild(void Function(DataModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataModelBuilder toBuilder() => new DataModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataModel &&
        id == other.id &&
        name == other.name &&
        email == other.email &&
        mobile_number == other.mobile_number &&
        fcm_token == other.fcm_token &&
        photo == other.photo &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        is_restaurant == other.is_restaurant &&
        email_verified_at == other.email_verified_at &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        Token == other.Token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, mobile_number.hashCode);
    _$hash = $jc(_$hash, fcm_token.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, is_restaurant.hashCode);
    _$hash = $jc(_$hash, email_verified_at.hashCode);
    _$hash = $jc(_$hash, created_at.hashCode);
    _$hash = $jc(_$hash, updated_at.hashCode);
    _$hash = $jc(_$hash, Token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataModel')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email)
          ..add('mobile_number', mobile_number)
          ..add('fcm_token', fcm_token)
          ..add('photo', photo)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('is_restaurant', is_restaurant)
          ..add('email_verified_at', email_verified_at)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('Token', Token))
        .toString();
  }
}

class DataModelBuilder implements Builder<DataModel, DataModelBuilder> {
  _$DataModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _mobile_number;
  String? get mobile_number => _$this._mobile_number;
  set mobile_number(String? mobile_number) =>
      _$this._mobile_number = mobile_number;

  String? _fcm_token;
  String? get fcm_token => _$this._fcm_token;
  set fcm_token(String? fcm_token) => _$this._fcm_token = fcm_token;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _is_restaurant;
  String? get is_restaurant => _$this._is_restaurant;
  set is_restaurant(String? is_restaurant) =>
      _$this._is_restaurant = is_restaurant;

  String? _email_verified_at;
  String? get email_verified_at => _$this._email_verified_at;
  set email_verified_at(String? email_verified_at) =>
      _$this._email_verified_at = email_verified_at;

  String? _created_at;
  String? get created_at => _$this._created_at;
  set created_at(String? created_at) => _$this._created_at = created_at;

  String? _updated_at;
  String? get updated_at => _$this._updated_at;
  set updated_at(String? updated_at) => _$this._updated_at = updated_at;

  String? _Token;
  String? get Token => _$this._Token;
  set Token(String? Token) => _$this._Token = Token;

  DataModelBuilder();

  DataModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _mobile_number = $v.mobile_number;
      _fcm_token = $v.fcm_token;
      _photo = $v.photo;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _is_restaurant = $v.is_restaurant;
      _email_verified_at = $v.email_verified_at;
      _created_at = $v.created_at;
      _updated_at = $v.updated_at;
      _Token = $v.Token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataModel;
  }

  @override
  void update(void Function(DataModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataModel build() => _build();

  _$DataModel _build() {
    final _$result = _$v ??
        new _$DataModel._(
            id: id,
            name: name,
            email: email,
            mobile_number: mobile_number,
            fcm_token: fcm_token,
            photo: photo,
            latitude: latitude,
            longitude: longitude,
            is_restaurant: is_restaurant,
            email_verified_at: email_verified_at,
            created_at: created_at,
            updated_at: updated_at,
            Token: Token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
