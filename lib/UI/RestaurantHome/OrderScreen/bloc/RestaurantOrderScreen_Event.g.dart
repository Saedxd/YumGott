// GENERATED CODE - DO NOT MODIFY BY HAND

part of RestaurantOrderScreen_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeCheckBox1Status extends ChangeCheckBox1Status {
  @override
  final bool? value;

  factory _$ChangeCheckBox1Status(
          [void Function(ChangeCheckBox1StatusBuilder)? updates]) =>
      (new ChangeCheckBox1StatusBuilder()..update(updates))._build();

  _$ChangeCheckBox1Status._({this.value}) : super._();

  @override
  ChangeCheckBox1Status rebuild(
          void Function(ChangeCheckBox1StatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCheckBox1StatusBuilder toBuilder() =>
      new ChangeCheckBox1StatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCheckBox1Status && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeCheckBox1Status')
          ..add('value', value))
        .toString();
  }
}

class ChangeCheckBox1StatusBuilder
    implements Builder<ChangeCheckBox1Status, ChangeCheckBox1StatusBuilder> {
  _$ChangeCheckBox1Status? _$v;

  bool? _value;
  bool? get value => _$this._value;
  set value(bool? value) => _$this._value = value;

  ChangeCheckBox1StatusBuilder();

  ChangeCheckBox1StatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCheckBox1Status other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCheckBox1Status;
  }

  @override
  void update(void Function(ChangeCheckBox1StatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCheckBox1Status build() => _build();

  _$ChangeCheckBox1Status _build() {
    final _$result = _$v ?? new _$ChangeCheckBox1Status._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
