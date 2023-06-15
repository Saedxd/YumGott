// GENERATED CODE - DO NOT MODIFY BY HAND

part of AddProductScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddProductScreenState extends AddProductScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final CategoryModel? AppetizersCateogry;
  @override
  final CategoryModel? ProductCategorys;
  @override
  final double? ContainerHeight;
  @override
  final List<String>? SelectedValues;
  @override
  final List<int>? SelectedValuesIDs;
  @override
  final File? PhotoFile;
  @override
  final int? ProductCateogryid;
  @override
  final List<String>? AllProductCategories;
  @override
  final String? SelectedProductCategoryValue;
  @override
  final List<String>? AppetizersIndexes;
  @override
  final List<String>? AppetizersCategorys;
  @override
  final List<List<String>>? SelectedValues_Array;
  @override
  final List<List<String>>? AllAppetizers;

  factory _$AddProductScreenState(
          [void Function(AddProductScreenStateBuilder)? updates]) =>
      (new AddProductScreenStateBuilder()..update(updates))._build();

  _$AddProductScreenState._(
      {this.error,
      this.isLoading,
      this.success,
      this.AppetizersCateogry,
      this.ProductCategorys,
      this.ContainerHeight,
      this.SelectedValues,
      this.SelectedValuesIDs,
      this.PhotoFile,
      this.ProductCateogryid,
      this.AllProductCategories,
      this.SelectedProductCategoryValue,
      this.AppetizersIndexes,
      this.AppetizersCategorys,
      this.SelectedValues_Array,
      this.AllAppetizers})
      : super._();

  @override
  AddProductScreenState rebuild(
          void Function(AddProductScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddProductScreenStateBuilder toBuilder() =>
      new AddProductScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddProductScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        AppetizersCateogry == other.AppetizersCateogry &&
        ProductCategorys == other.ProductCategorys &&
        ContainerHeight == other.ContainerHeight &&
        SelectedValues == other.SelectedValues &&
        SelectedValuesIDs == other.SelectedValuesIDs &&
        PhotoFile == other.PhotoFile &&
        ProductCateogryid == other.ProductCateogryid &&
        AllProductCategories == other.AllProductCategories &&
        SelectedProductCategoryValue == other.SelectedProductCategoryValue &&
        AppetizersIndexes == other.AppetizersIndexes &&
        AppetizersCategorys == other.AppetizersCategorys &&
        SelectedValues_Array == other.SelectedValues_Array &&
        AllAppetizers == other.AllAppetizers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, AppetizersCateogry.hashCode);
    _$hash = $jc(_$hash, ProductCategorys.hashCode);
    _$hash = $jc(_$hash, ContainerHeight.hashCode);
    _$hash = $jc(_$hash, SelectedValues.hashCode);
    _$hash = $jc(_$hash, SelectedValuesIDs.hashCode);
    _$hash = $jc(_$hash, PhotoFile.hashCode);
    _$hash = $jc(_$hash, ProductCateogryid.hashCode);
    _$hash = $jc(_$hash, AllProductCategories.hashCode);
    _$hash = $jc(_$hash, SelectedProductCategoryValue.hashCode);
    _$hash = $jc(_$hash, AppetizersIndexes.hashCode);
    _$hash = $jc(_$hash, AppetizersCategorys.hashCode);
    _$hash = $jc(_$hash, SelectedValues_Array.hashCode);
    _$hash = $jc(_$hash, AllAppetizers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddProductScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('AppetizersCateogry', AppetizersCateogry)
          ..add('ProductCategorys', ProductCategorys)
          ..add('ContainerHeight', ContainerHeight)
          ..add('SelectedValues', SelectedValues)
          ..add('SelectedValuesIDs', SelectedValuesIDs)
          ..add('PhotoFile', PhotoFile)
          ..add('ProductCateogryid', ProductCateogryid)
          ..add('AllProductCategories', AllProductCategories)
          ..add('SelectedProductCategoryValue', SelectedProductCategoryValue)
          ..add('AppetizersIndexes', AppetizersIndexes)
          ..add('AppetizersCategorys', AppetizersCategorys)
          ..add('SelectedValues_Array', SelectedValues_Array)
          ..add('AllAppetizers', AllAppetizers))
        .toString();
  }
}

class AddProductScreenStateBuilder
    implements Builder<AddProductScreenState, AddProductScreenStateBuilder> {
  _$AddProductScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CategoryModelBuilder? _AppetizersCateogry;
  CategoryModelBuilder get AppetizersCateogry =>
      _$this._AppetizersCateogry ??= new CategoryModelBuilder();
  set AppetizersCateogry(CategoryModelBuilder? AppetizersCateogry) =>
      _$this._AppetizersCateogry = AppetizersCateogry;

  CategoryModelBuilder? _ProductCategorys;
  CategoryModelBuilder get ProductCategorys =>
      _$this._ProductCategorys ??= new CategoryModelBuilder();
  set ProductCategorys(CategoryModelBuilder? ProductCategorys) =>
      _$this._ProductCategorys = ProductCategorys;

  double? _ContainerHeight;
  double? get ContainerHeight => _$this._ContainerHeight;
  set ContainerHeight(double? ContainerHeight) =>
      _$this._ContainerHeight = ContainerHeight;

  List<String>? _SelectedValues;
  List<String>? get SelectedValues => _$this._SelectedValues;
  set SelectedValues(List<String>? SelectedValues) =>
      _$this._SelectedValues = SelectedValues;

  List<int>? _SelectedValuesIDs;
  List<int>? get SelectedValuesIDs => _$this._SelectedValuesIDs;
  set SelectedValuesIDs(List<int>? SelectedValuesIDs) =>
      _$this._SelectedValuesIDs = SelectedValuesIDs;

  File? _PhotoFile;
  File? get PhotoFile => _$this._PhotoFile;
  set PhotoFile(File? PhotoFile) => _$this._PhotoFile = PhotoFile;

  int? _ProductCateogryid;
  int? get ProductCateogryid => _$this._ProductCateogryid;
  set ProductCateogryid(int? ProductCateogryid) =>
      _$this._ProductCateogryid = ProductCateogryid;

  List<String>? _AllProductCategories;
  List<String>? get AllProductCategories => _$this._AllProductCategories;
  set AllProductCategories(List<String>? AllProductCategories) =>
      _$this._AllProductCategories = AllProductCategories;

  String? _SelectedProductCategoryValue;
  String? get SelectedProductCategoryValue =>
      _$this._SelectedProductCategoryValue;
  set SelectedProductCategoryValue(String? SelectedProductCategoryValue) =>
      _$this._SelectedProductCategoryValue = SelectedProductCategoryValue;

  List<String>? _AppetizersIndexes;
  List<String>? get AppetizersIndexes => _$this._AppetizersIndexes;
  set AppetizersIndexes(List<String>? AppetizersIndexes) =>
      _$this._AppetizersIndexes = AppetizersIndexes;

  List<String>? _AppetizersCategorys;
  List<String>? get AppetizersCategorys => _$this._AppetizersCategorys;
  set AppetizersCategorys(List<String>? AppetizersCategorys) =>
      _$this._AppetizersCategorys = AppetizersCategorys;

  List<List<String>>? _SelectedValues_Array;
  List<List<String>>? get SelectedValues_Array => _$this._SelectedValues_Array;
  set SelectedValues_Array(List<List<String>>? SelectedValues_Array) =>
      _$this._SelectedValues_Array = SelectedValues_Array;

  List<List<String>>? _AllAppetizers;
  List<List<String>>? get AllAppetizers => _$this._AllAppetizers;
  set AllAppetizers(List<List<String>>? AllAppetizers) =>
      _$this._AllAppetizers = AllAppetizers;

  AddProductScreenStateBuilder();

  AddProductScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _AppetizersCateogry = $v.AppetizersCateogry?.toBuilder();
      _ProductCategorys = $v.ProductCategorys?.toBuilder();
      _ContainerHeight = $v.ContainerHeight;
      _SelectedValues = $v.SelectedValues;
      _SelectedValuesIDs = $v.SelectedValuesIDs;
      _PhotoFile = $v.PhotoFile;
      _ProductCateogryid = $v.ProductCateogryid;
      _AllProductCategories = $v.AllProductCategories;
      _SelectedProductCategoryValue = $v.SelectedProductCategoryValue;
      _AppetizersIndexes = $v.AppetizersIndexes;
      _AppetizersCategorys = $v.AppetizersCategorys;
      _SelectedValues_Array = $v.SelectedValues_Array;
      _AllAppetizers = $v.AllAppetizers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddProductScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddProductScreenState;
  }

  @override
  void update(void Function(AddProductScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddProductScreenState build() => _build();

  _$AddProductScreenState _build() {
    _$AddProductScreenState _$result;
    try {
      _$result = _$v ??
          new _$AddProductScreenState._(
              error: error,
              isLoading: isLoading,
              success: success,
              AppetizersCateogry: _AppetizersCateogry?.build(),
              ProductCategorys: _ProductCategorys?.build(),
              ContainerHeight: ContainerHeight,
              SelectedValues: SelectedValues,
              SelectedValuesIDs: SelectedValuesIDs,
              PhotoFile: PhotoFile,
              ProductCateogryid: ProductCateogryid,
              AllProductCategories: AllProductCategories,
              SelectedProductCategoryValue: SelectedProductCategoryValue,
              AppetizersIndexes: AppetizersIndexes,
              AppetizersCategorys: AppetizersCategorys,
              SelectedValues_Array: SelectedValues_Array,
              AllAppetizers: AllAppetizers);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'AppetizersCateogry';
        _AppetizersCateogry?.build();
        _$failedField = 'ProductCategorys';
        _ProductCategorys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AddProductScreenState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
