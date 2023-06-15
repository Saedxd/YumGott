// GENERATED CODE - DO NOT MODIFY BY HAND

part of Menu_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MenuState extends MenuState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? CateProductsisLoading;
  @override
  final bool? CateProductsuccess;
  @override
  final List<bool>? SelectedTap;
  @override
  final int? SelectedIndex;
  @override
  final int? Index;
  @override
  final List<String>? Tabs;
  @override
  final List<List<Product>>? ProductList;

  factory _$MenuState([void Function(MenuStateBuilder)? updates]) =>
      (new MenuStateBuilder()..update(updates))._build();

  _$MenuState._(
      {this.error,
      this.isLoading,
      this.success,
      this.CateProductsisLoading,
      this.CateProductsuccess,
      this.SelectedTap,
      this.SelectedIndex,
      this.Index,
      this.Tabs,
      this.ProductList})
      : super._();

  @override
  MenuState rebuild(void Function(MenuStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MenuStateBuilder toBuilder() => new MenuStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MenuState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        CateProductsisLoading == other.CateProductsisLoading &&
        CateProductsuccess == other.CateProductsuccess &&
        SelectedTap == other.SelectedTap &&
        SelectedIndex == other.SelectedIndex &&
        Index == other.Index &&
        Tabs == other.Tabs &&
        ProductList == other.ProductList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, CateProductsisLoading.hashCode);
    _$hash = $jc(_$hash, CateProductsuccess.hashCode);
    _$hash = $jc(_$hash, SelectedTap.hashCode);
    _$hash = $jc(_$hash, SelectedIndex.hashCode);
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jc(_$hash, Tabs.hashCode);
    _$hash = $jc(_$hash, ProductList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MenuState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('CateProductsisLoading', CateProductsisLoading)
          ..add('CateProductsuccess', CateProductsuccess)
          ..add('SelectedTap', SelectedTap)
          ..add('SelectedIndex', SelectedIndex)
          ..add('Index', Index)
          ..add('Tabs', Tabs)
          ..add('ProductList', ProductList))
        .toString();
  }
}

class MenuStateBuilder implements Builder<MenuState, MenuStateBuilder> {
  _$MenuState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _CateProductsisLoading;
  bool? get CateProductsisLoading => _$this._CateProductsisLoading;
  set CateProductsisLoading(bool? CateProductsisLoading) =>
      _$this._CateProductsisLoading = CateProductsisLoading;

  bool? _CateProductsuccess;
  bool? get CateProductsuccess => _$this._CateProductsuccess;
  set CateProductsuccess(bool? CateProductsuccess) =>
      _$this._CateProductsuccess = CateProductsuccess;

  List<bool>? _SelectedTap;
  List<bool>? get SelectedTap => _$this._SelectedTap;
  set SelectedTap(List<bool>? SelectedTap) => _$this._SelectedTap = SelectedTap;

  int? _SelectedIndex;
  int? get SelectedIndex => _$this._SelectedIndex;
  set SelectedIndex(int? SelectedIndex) =>
      _$this._SelectedIndex = SelectedIndex;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  List<String>? _Tabs;
  List<String>? get Tabs => _$this._Tabs;
  set Tabs(List<String>? Tabs) => _$this._Tabs = Tabs;

  List<List<Product>>? _ProductList;
  List<List<Product>>? get ProductList => _$this._ProductList;
  set ProductList(List<List<Product>>? ProductList) =>
      _$this._ProductList = ProductList;

  MenuStateBuilder();

  MenuStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _CateProductsisLoading = $v.CateProductsisLoading;
      _CateProductsuccess = $v.CateProductsuccess;
      _SelectedTap = $v.SelectedTap;
      _SelectedIndex = $v.SelectedIndex;
      _Index = $v.Index;
      _Tabs = $v.Tabs;
      _ProductList = $v.ProductList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MenuState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MenuState;
  }

  @override
  void update(void Function(MenuStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MenuState build() => _build();

  _$MenuState _build() {
    final _$result = _$v ??
        new _$MenuState._(
            error: error,
            isLoading: isLoading,
            success: success,
            CateProductsisLoading: CateProductsisLoading,
            CateProductsuccess: CateProductsuccess,
            SelectedTap: SelectedTap,
            SelectedIndex: SelectedIndex,
            Index: Index,
            Tabs: Tabs,
            ProductList: ProductList);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
