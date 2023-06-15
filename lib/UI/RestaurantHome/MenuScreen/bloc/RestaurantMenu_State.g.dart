// GENERATED CODE - DO NOT MODIFY BY HAND

part of RestaurantMenu_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantMenuState extends RestaurantMenuState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? MenuStatusLoading;
  @override
  final bool? success;
  @override
  final List<bool>? BranchtypeStatus;
  @override
  final bool? AppetizerFound;
  @override
  final bool? AppetizerNotEmpty;
  @override
  final bool? CategoryProductFound;
  @override
  final CategoryModel? Category;
  @override
  final List<RestaurantMenuTile>? MenuTileList;
  @override
  final List<int>? MenuTileItemsLength;
  @override
  final List<bool>? MenuTileStatus;
  @override
  final List<bool>? DialogStatus;

  factory _$RestaurantMenuState(
          [void Function(RestaurantMenuStateBuilder)? updates]) =>
      (new RestaurantMenuStateBuilder()..update(updates))._build();

  _$RestaurantMenuState._(
      {this.error,
      this.isLoading,
      this.MenuStatusLoading,
      this.success,
      this.BranchtypeStatus,
      this.AppetizerFound,
      this.AppetizerNotEmpty,
      this.CategoryProductFound,
      this.Category,
      this.MenuTileList,
      this.MenuTileItemsLength,
      this.MenuTileStatus,
      this.DialogStatus})
      : super._();

  @override
  RestaurantMenuState rebuild(
          void Function(RestaurantMenuStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantMenuStateBuilder toBuilder() =>
      new RestaurantMenuStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantMenuState &&
        error == other.error &&
        isLoading == other.isLoading &&
        MenuStatusLoading == other.MenuStatusLoading &&
        success == other.success &&
        BranchtypeStatus == other.BranchtypeStatus &&
        AppetizerFound == other.AppetizerFound &&
        AppetizerNotEmpty == other.AppetizerNotEmpty &&
        CategoryProductFound == other.CategoryProductFound &&
        Category == other.Category &&
        MenuTileList == other.MenuTileList &&
        MenuTileItemsLength == other.MenuTileItemsLength &&
        MenuTileStatus == other.MenuTileStatus &&
        DialogStatus == other.DialogStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, MenuStatusLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, BranchtypeStatus.hashCode);
    _$hash = $jc(_$hash, AppetizerFound.hashCode);
    _$hash = $jc(_$hash, AppetizerNotEmpty.hashCode);
    _$hash = $jc(_$hash, CategoryProductFound.hashCode);
    _$hash = $jc(_$hash, Category.hashCode);
    _$hash = $jc(_$hash, MenuTileList.hashCode);
    _$hash = $jc(_$hash, MenuTileItemsLength.hashCode);
    _$hash = $jc(_$hash, MenuTileStatus.hashCode);
    _$hash = $jc(_$hash, DialogStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantMenuState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('MenuStatusLoading', MenuStatusLoading)
          ..add('success', success)
          ..add('BranchtypeStatus', BranchtypeStatus)
          ..add('AppetizerFound', AppetizerFound)
          ..add('AppetizerNotEmpty', AppetizerNotEmpty)
          ..add('CategoryProductFound', CategoryProductFound)
          ..add('Category', Category)
          ..add('MenuTileList', MenuTileList)
          ..add('MenuTileItemsLength', MenuTileItemsLength)
          ..add('MenuTileStatus', MenuTileStatus)
          ..add('DialogStatus', DialogStatus))
        .toString();
  }
}

class RestaurantMenuStateBuilder
    implements Builder<RestaurantMenuState, RestaurantMenuStateBuilder> {
  _$RestaurantMenuState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _MenuStatusLoading;
  bool? get MenuStatusLoading => _$this._MenuStatusLoading;
  set MenuStatusLoading(bool? MenuStatusLoading) =>
      _$this._MenuStatusLoading = MenuStatusLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  List<bool>? _BranchtypeStatus;
  List<bool>? get BranchtypeStatus => _$this._BranchtypeStatus;
  set BranchtypeStatus(List<bool>? BranchtypeStatus) =>
      _$this._BranchtypeStatus = BranchtypeStatus;

  bool? _AppetizerFound;
  bool? get AppetizerFound => _$this._AppetizerFound;
  set AppetizerFound(bool? AppetizerFound) =>
      _$this._AppetizerFound = AppetizerFound;

  bool? _AppetizerNotEmpty;
  bool? get AppetizerNotEmpty => _$this._AppetizerNotEmpty;
  set AppetizerNotEmpty(bool? AppetizerNotEmpty) =>
      _$this._AppetizerNotEmpty = AppetizerNotEmpty;

  bool? _CategoryProductFound;
  bool? get CategoryProductFound => _$this._CategoryProductFound;
  set CategoryProductFound(bool? CategoryProductFound) =>
      _$this._CategoryProductFound = CategoryProductFound;

  CategoryModelBuilder? _Category;
  CategoryModelBuilder get Category =>
      _$this._Category ??= new CategoryModelBuilder();
  set Category(CategoryModelBuilder? Category) => _$this._Category = Category;

  List<RestaurantMenuTile>? _MenuTileList;
  List<RestaurantMenuTile>? get MenuTileList => _$this._MenuTileList;
  set MenuTileList(List<RestaurantMenuTile>? MenuTileList) =>
      _$this._MenuTileList = MenuTileList;

  List<int>? _MenuTileItemsLength;
  List<int>? get MenuTileItemsLength => _$this._MenuTileItemsLength;
  set MenuTileItemsLength(List<int>? MenuTileItemsLength) =>
      _$this._MenuTileItemsLength = MenuTileItemsLength;

  List<bool>? _MenuTileStatus;
  List<bool>? get MenuTileStatus => _$this._MenuTileStatus;
  set MenuTileStatus(List<bool>? MenuTileStatus) =>
      _$this._MenuTileStatus = MenuTileStatus;

  List<bool>? _DialogStatus;
  List<bool>? get DialogStatus => _$this._DialogStatus;
  set DialogStatus(List<bool>? DialogStatus) =>
      _$this._DialogStatus = DialogStatus;

  RestaurantMenuStateBuilder();

  RestaurantMenuStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _MenuStatusLoading = $v.MenuStatusLoading;
      _success = $v.success;
      _BranchtypeStatus = $v.BranchtypeStatus;
      _AppetizerFound = $v.AppetizerFound;
      _AppetizerNotEmpty = $v.AppetizerNotEmpty;
      _CategoryProductFound = $v.CategoryProductFound;
      _Category = $v.Category?.toBuilder();
      _MenuTileList = $v.MenuTileList;
      _MenuTileItemsLength = $v.MenuTileItemsLength;
      _MenuTileStatus = $v.MenuTileStatus;
      _DialogStatus = $v.DialogStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantMenuState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantMenuState;
  }

  @override
  void update(void Function(RestaurantMenuStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantMenuState build() => _build();

  _$RestaurantMenuState _build() {
    _$RestaurantMenuState _$result;
    try {
      _$result = _$v ??
          new _$RestaurantMenuState._(
              error: error,
              isLoading: isLoading,
              MenuStatusLoading: MenuStatusLoading,
              success: success,
              BranchtypeStatus: BranchtypeStatus,
              AppetizerFound: AppetizerFound,
              AppetizerNotEmpty: AppetizerNotEmpty,
              CategoryProductFound: CategoryProductFound,
              Category: _Category?.build(),
              MenuTileList: MenuTileList,
              MenuTileItemsLength: MenuTileItemsLength,
              MenuTileStatus: MenuTileStatus,
              DialogStatus: DialogStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Category';
        _Category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestaurantMenuState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
