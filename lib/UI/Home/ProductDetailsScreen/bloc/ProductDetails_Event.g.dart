// GENERATED CODE - DO NOT MODIFY BY HAND

part of ProductDetails_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncreamentCounter extends IncreamentCounter {
  factory _$IncreamentCounter(
          [void Function(IncreamentCounterBuilder)? updates]) =>
      (new IncreamentCounterBuilder()..update(updates))._build();

  _$IncreamentCounter._() : super._();

  @override
  IncreamentCounter rebuild(void Function(IncreamentCounterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncreamentCounterBuilder toBuilder() =>
      new IncreamentCounterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncreamentCounter;
  }

  @override
  int get hashCode {
    return 611610316;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'IncreamentCounter').toString();
  }
}

class IncreamentCounterBuilder
    implements Builder<IncreamentCounter, IncreamentCounterBuilder> {
  _$IncreamentCounter? _$v;

  IncreamentCounterBuilder();

  @override
  void replace(IncreamentCounter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncreamentCounter;
  }

  @override
  void update(void Function(IncreamentCounterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncreamentCounter build() => _build();

  _$IncreamentCounter _build() {
    final _$result = _$v ?? new _$IncreamentCounter._();
    replace(_$result);
    return _$result;
  }
}

class _$DecreamentCounter extends DecreamentCounter {
  factory _$DecreamentCounter(
          [void Function(DecreamentCounterBuilder)? updates]) =>
      (new DecreamentCounterBuilder()..update(updates))._build();

  _$DecreamentCounter._() : super._();

  @override
  DecreamentCounter rebuild(void Function(DecreamentCounterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DecreamentCounterBuilder toBuilder() =>
      new DecreamentCounterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DecreamentCounter;
  }

  @override
  int get hashCode {
    return 592927358;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'DecreamentCounter').toString();
  }
}

class DecreamentCounterBuilder
    implements Builder<DecreamentCounter, DecreamentCounterBuilder> {
  _$DecreamentCounter? _$v;

  DecreamentCounterBuilder();

  @override
  void replace(DecreamentCounter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DecreamentCounter;
  }

  @override
  void update(void Function(DecreamentCounterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DecreamentCounter build() => _build();

  _$DecreamentCounter _build() {
    final _$result = _$v ?? new _$DecreamentCounter._();
    replace(_$result);
    return _$result;
  }
}

class _$ShowMoreSwitch extends ShowMoreSwitch {
  factory _$ShowMoreSwitch([void Function(ShowMoreSwitchBuilder)? updates]) =>
      (new ShowMoreSwitchBuilder()..update(updates))._build();

  _$ShowMoreSwitch._() : super._();

  @override
  ShowMoreSwitch rebuild(void Function(ShowMoreSwitchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowMoreSwitchBuilder toBuilder() =>
      new ShowMoreSwitchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowMoreSwitch;
  }

  @override
  int get hashCode {
    return 769744337;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ShowMoreSwitch').toString();
  }
}

class ShowMoreSwitchBuilder
    implements Builder<ShowMoreSwitch, ShowMoreSwitchBuilder> {
  _$ShowMoreSwitch? _$v;

  ShowMoreSwitchBuilder();

  @override
  void replace(ShowMoreSwitch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowMoreSwitch;
  }

  @override
  void update(void Function(ShowMoreSwitchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowMoreSwitch build() => _build();

  _$ShowMoreSwitch _build() {
    final _$result = _$v ?? new _$ShowMoreSwitch._();
    replace(_$result);
    return _$result;
  }
}

class _$Likeproduct extends Likeproduct {
  factory _$Likeproduct([void Function(LikeproductBuilder)? updates]) =>
      (new LikeproductBuilder()..update(updates))._build();

  _$Likeproduct._() : super._();

  @override
  Likeproduct rebuild(void Function(LikeproductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikeproductBuilder toBuilder() => new LikeproductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Likeproduct;
  }

  @override
  int get hashCode {
    return 429615282;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'Likeproduct').toString();
  }
}

class LikeproductBuilder implements Builder<Likeproduct, LikeproductBuilder> {
  _$Likeproduct? _$v;

  LikeproductBuilder();

  @override
  void replace(Likeproduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Likeproduct;
  }

  @override
  void update(void Function(LikeproductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Likeproduct build() => _build();

  _$Likeproduct _build() {
    final _$result = _$v ?? new _$Likeproduct._();
    replace(_$result);
    return _$result;
  }
}

class _$GetProduct extends GetProduct {
  @override
  final String? Country;

  factory _$GetProduct([void Function(GetProductBuilder)? updates]) =>
      (new GetProductBuilder()..update(updates))._build();

  _$GetProduct._({this.Country}) : super._();

  @override
  GetProduct rebuild(void Function(GetProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProductBuilder toBuilder() => new GetProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProduct && Country == other.Country;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Country.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetProduct')..add('Country', Country))
        .toString();
  }
}

class GetProductBuilder implements Builder<GetProduct, GetProductBuilder> {
  _$GetProduct? _$v;

  String? _Country;
  String? get Country => _$this._Country;
  set Country(String? Country) => _$this._Country = Country;

  GetProductBuilder();

  GetProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Country = $v.Country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProduct;
  }

  @override
  void update(void Function(GetProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetProduct build() => _build();

  _$GetProduct _build() {
    final _$result = _$v ?? new _$GetProduct._(Country: Country);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
