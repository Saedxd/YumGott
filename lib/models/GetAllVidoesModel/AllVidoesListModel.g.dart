// GENERATED CODE - DO NOT MODIFY BY HAND

part of AllVidoesListModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllVidoesListModel> _$allVidoesListModelSerializer =
    new _$AllVidoesListModelSerializer();

class _$AllVidoesListModelSerializer
    implements StructuredSerializer<AllVidoesListModel> {
  @override
  final Iterable<Type> types = const [AllVidoesListModel, _$AllVidoesListModel];
  @override
  final String wireName = 'AllVidoesListModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AllVidoesListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GetAllVidoesModel)])));
    }
    return result;
  }

  @override
  AllVidoesListModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllVidoesListModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GetAllVidoesModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AllVidoesListModel extends AllVidoesListModel {
  @override
  final String? status;
  @override
  final int? results;
  @override
  final int? count;
  @override
  final BuiltList<GetAllVidoesModel>? data;

  factory _$AllVidoesListModel(
          [void Function(AllVidoesListModelBuilder)? updates]) =>
      (new AllVidoesListModelBuilder()..update(updates))._build();

  _$AllVidoesListModel._({this.status, this.results, this.count, this.data})
      : super._();

  @override
  AllVidoesListModel rebuild(
          void Function(AllVidoesListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllVidoesListModelBuilder toBuilder() =>
      new AllVidoesListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllVidoesListModel &&
        status == other.status &&
        results == other.results &&
        count == other.count &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllVidoesListModel')
          ..add('status', status)
          ..add('results', results)
          ..add('count', count)
          ..add('data', data))
        .toString();
  }
}

class AllVidoesListModelBuilder
    implements Builder<AllVidoesListModel, AllVidoesListModelBuilder> {
  _$AllVidoesListModel? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _results;
  int? get results => _$this._results;
  set results(int? results) => _$this._results = results;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<GetAllVidoesModel>? _data;
  ListBuilder<GetAllVidoesModel> get data =>
      _$this._data ??= new ListBuilder<GetAllVidoesModel>();
  set data(ListBuilder<GetAllVidoesModel>? data) => _$this._data = data;

  AllVidoesListModelBuilder();

  AllVidoesListModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _results = $v.results;
      _count = $v.count;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllVidoesListModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllVidoesListModel;
  }

  @override
  void update(void Function(AllVidoesListModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllVidoesListModel build() => _build();

  _$AllVidoesListModel _build() {
    _$AllVidoesListModel _$result;
    try {
      _$result = _$v ??
          new _$AllVidoesListModel._(
              status: status,
              results: results,
              count: count,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllVidoesListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
