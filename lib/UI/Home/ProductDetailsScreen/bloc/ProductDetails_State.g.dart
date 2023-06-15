// GENERATED CODE - DO NOT MODIFY BY HAND

part of ProductDetails_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductDetailsState extends ProductDetailsState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final int? Counter;
  @override
  final bool? ShowMore_Clicked;

  factory _$ProductDetailsState(
          [void Function(ProductDetailsStateBuilder)? updates]) =>
      (new ProductDetailsStateBuilder()..update(updates))._build();

  _$ProductDetailsState._(
      {this.error,
      this.isLoading,
      this.success,
      this.Counter,
      this.ShowMore_Clicked})
      : super._();

  @override
  ProductDetailsState rebuild(
          void Function(ProductDetailsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailsStateBuilder toBuilder() =>
      new ProductDetailsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailsState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        Counter == other.Counter &&
        ShowMore_Clicked == other.ShowMore_Clicked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Counter.hashCode);
    _$hash = $jc(_$hash, ShowMore_Clicked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductDetailsState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Counter', Counter)
          ..add('ShowMore_Clicked', ShowMore_Clicked))
        .toString();
  }
}

class ProductDetailsStateBuilder
    implements Builder<ProductDetailsState, ProductDetailsStateBuilder> {
  _$ProductDetailsState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _Counter;
  int? get Counter => _$this._Counter;
  set Counter(int? Counter) => _$this._Counter = Counter;

  bool? _ShowMore_Clicked;
  bool? get ShowMore_Clicked => _$this._ShowMore_Clicked;
  set ShowMore_Clicked(bool? ShowMore_Clicked) =>
      _$this._ShowMore_Clicked = ShowMore_Clicked;

  ProductDetailsStateBuilder();

  ProductDetailsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _Counter = $v.Counter;
      _ShowMore_Clicked = $v.ShowMore_Clicked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductDetailsState;
  }

  @override
  void update(void Function(ProductDetailsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductDetailsState build() => _build();

  _$ProductDetailsState _build() {
    final _$result = _$v ??
        new _$ProductDetailsState._(
            error: error,
            isLoading: isLoading,
            success: success,
            Counter: Counter,
            ShowMore_Clicked: ShowMore_Clicked);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
