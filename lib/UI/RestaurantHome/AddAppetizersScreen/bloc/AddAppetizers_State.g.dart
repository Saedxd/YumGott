// GENERATED CODE - DO NOT MODIFY BY HAND

part of AddAppetizers_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddAppetizersState extends AddAppetizersState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final File? PhotoFile;
  @override
  final String? Selected_AppetizerCategory;
  @override
  final List<String>? AllAppetizersCategories;
  @override
  final CategoryModel? Create_appetizer;
  @override
  final CategoryModel? GetAppetizers;

  factory _$AddAppetizersState(
          [void Function(AddAppetizersStateBuilder)? updates]) =>
      (new AddAppetizersStateBuilder()..update(updates))._build();

  _$AddAppetizersState._(
      {this.error,
      this.isLoading,
      this.success,
      this.PhotoFile,
      this.Selected_AppetizerCategory,
      this.AllAppetizersCategories,
      this.Create_appetizer,
      this.GetAppetizers})
      : super._();

  @override
  AddAppetizersState rebuild(
          void Function(AddAppetizersStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddAppetizersStateBuilder toBuilder() =>
      new AddAppetizersStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddAppetizersState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        PhotoFile == other.PhotoFile &&
        Selected_AppetizerCategory == other.Selected_AppetizerCategory &&
        AllAppetizersCategories == other.AllAppetizersCategories &&
        Create_appetizer == other.Create_appetizer &&
        GetAppetizers == other.GetAppetizers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, PhotoFile.hashCode);
    _$hash = $jc(_$hash, Selected_AppetizerCategory.hashCode);
    _$hash = $jc(_$hash, AllAppetizersCategories.hashCode);
    _$hash = $jc(_$hash, Create_appetizer.hashCode);
    _$hash = $jc(_$hash, GetAppetizers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddAppetizersState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('PhotoFile', PhotoFile)
          ..add('Selected_AppetizerCategory', Selected_AppetizerCategory)
          ..add('AllAppetizersCategories', AllAppetizersCategories)
          ..add('Create_appetizer', Create_appetizer)
          ..add('GetAppetizers', GetAppetizers))
        .toString();
  }
}

class AddAppetizersStateBuilder
    implements Builder<AddAppetizersState, AddAppetizersStateBuilder> {
  _$AddAppetizersState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  File? _PhotoFile;
  File? get PhotoFile => _$this._PhotoFile;
  set PhotoFile(File? PhotoFile) => _$this._PhotoFile = PhotoFile;

  String? _Selected_AppetizerCategory;
  String? get Selected_AppetizerCategory => _$this._Selected_AppetizerCategory;
  set Selected_AppetizerCategory(String? Selected_AppetizerCategory) =>
      _$this._Selected_AppetizerCategory = Selected_AppetizerCategory;

  List<String>? _AllAppetizersCategories;
  List<String>? get AllAppetizersCategories => _$this._AllAppetizersCategories;
  set AllAppetizersCategories(List<String>? AllAppetizersCategories) =>
      _$this._AllAppetizersCategories = AllAppetizersCategories;

  CategoryModelBuilder? _Create_appetizer;
  CategoryModelBuilder get Create_appetizer =>
      _$this._Create_appetizer ??= new CategoryModelBuilder();
  set Create_appetizer(CategoryModelBuilder? Create_appetizer) =>
      _$this._Create_appetizer = Create_appetizer;

  CategoryModelBuilder? _GetAppetizers;
  CategoryModelBuilder get GetAppetizers =>
      _$this._GetAppetizers ??= new CategoryModelBuilder();
  set GetAppetizers(CategoryModelBuilder? GetAppetizers) =>
      _$this._GetAppetizers = GetAppetizers;

  AddAppetizersStateBuilder();

  AddAppetizersStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _PhotoFile = $v.PhotoFile;
      _Selected_AppetizerCategory = $v.Selected_AppetizerCategory;
      _AllAppetizersCategories = $v.AllAppetizersCategories;
      _Create_appetizer = $v.Create_appetizer?.toBuilder();
      _GetAppetizers = $v.GetAppetizers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddAppetizersState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddAppetizersState;
  }

  @override
  void update(void Function(AddAppetizersStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddAppetizersState build() => _build();

  _$AddAppetizersState _build() {
    _$AddAppetizersState _$result;
    try {
      _$result = _$v ??
          new _$AddAppetizersState._(
              error: error,
              isLoading: isLoading,
              success: success,
              PhotoFile: PhotoFile,
              Selected_AppetizerCategory: Selected_AppetizerCategory,
              AllAppetizersCategories: AllAppetizersCategories,
              Create_appetizer: _Create_appetizer?.build(),
              GetAppetizers: _GetAppetizers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Create_appetizer';
        _Create_appetizer?.build();
        _$failedField = 'GetAppetizers';
        _GetAppetizers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AddAppetizersState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
