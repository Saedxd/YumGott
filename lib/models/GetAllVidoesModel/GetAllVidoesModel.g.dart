// GENERATED CODE - DO NOT MODIFY BY HAND

part of GetAllVidoesModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetAllVidoesModel> _$getAllVidoesModelSerializer =
    new _$GetAllVidoesModelSerializer();

class _$GetAllVidoesModelSerializer
    implements StructuredSerializer<GetAllVidoesModel> {
  @override
  final Iterable<Type> types = const [GetAllVidoesModel, _$GetAllVidoesModel];
  @override
  final String wireName = 'GetAllVidoesModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetAllVidoesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GetAllVidoesModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GetAllVidoesModelBuilder().build();
  }
}

class _$GetAllVidoesModel extends GetAllVidoesModel {
  factory _$GetAllVidoesModel(
          [void Function(GetAllVidoesModelBuilder)? updates]) =>
      (new GetAllVidoesModelBuilder()..update(updates))._build();

  _$GetAllVidoesModel._() : super._();

  @override
  GetAllVidoesModel rebuild(void Function(GetAllVidoesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAllVidoesModelBuilder toBuilder() =>
      new GetAllVidoesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAllVidoesModel;
  }

  @override
  int get hashCode {
    return 607493182;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAllVidoesModel').toString();
  }
}

class GetAllVidoesModelBuilder
    implements Builder<GetAllVidoesModel, GetAllVidoesModelBuilder> {
  _$GetAllVidoesModel? _$v;

  GetAllVidoesModelBuilder();

  @override
  void replace(GetAllVidoesModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAllVidoesModel;
  }

  @override
  void update(void Function(GetAllVidoesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAllVidoesModel build() => _build();

  _$GetAllVidoesModel _build() {
    final _$result = _$v ?? new _$GetAllVidoesModel._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
