// GENERATED CODE - DO NOT MODIFY BY HAND

part of ContributeScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryRestaurantsState extends CategoryRestaurantsState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final int? Index;
  @override
  final List<User>? FilteredRestaurants;
  @override
  final List<User>? UnFilteredRestaurants;

  factory _$CategoryRestaurantsState(
          [void Function(CategoryRestaurantsStateBuilder)? updates]) =>
      (new CategoryRestaurantsStateBuilder()..update(updates))._build();

  _$CategoryRestaurantsState._(
      {this.error,
      this.isLoading,
      this.success,
      this.Index,
      this.FilteredRestaurants,
      this.UnFilteredRestaurants})
      : super._();

  @override
  CategoryRestaurantsState rebuild(
          void Function(CategoryRestaurantsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryRestaurantsStateBuilder toBuilder() =>
      new CategoryRestaurantsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryRestaurantsState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        Index == other.Index &&
        FilteredRestaurants == other.FilteredRestaurants &&
        UnFilteredRestaurants == other.UnFilteredRestaurants;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jc(_$hash, FilteredRestaurants.hashCode);
    _$hash = $jc(_$hash, UnFilteredRestaurants.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryRestaurantsState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Index', Index)
          ..add('FilteredRestaurants', FilteredRestaurants)
          ..add('UnFilteredRestaurants', UnFilteredRestaurants))
        .toString();
  }
}

class CategoryRestaurantsStateBuilder
    implements
        Builder<CategoryRestaurantsState, CategoryRestaurantsStateBuilder> {
  _$CategoryRestaurantsState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  List<User>? _FilteredRestaurants;
  List<User>? get FilteredRestaurants => _$this._FilteredRestaurants;
  set FilteredRestaurants(List<User>? FilteredRestaurants) =>
      _$this._FilteredRestaurants = FilteredRestaurants;

  List<User>? _UnFilteredRestaurants;
  List<User>? get UnFilteredRestaurants => _$this._UnFilteredRestaurants;
  set UnFilteredRestaurants(List<User>? UnFilteredRestaurants) =>
      _$this._UnFilteredRestaurants = UnFilteredRestaurants;

  CategoryRestaurantsStateBuilder();

  CategoryRestaurantsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _Index = $v.Index;
      _FilteredRestaurants = $v.FilteredRestaurants;
      _UnFilteredRestaurants = $v.UnFilteredRestaurants;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryRestaurantsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryRestaurantsState;
  }

  @override
  void update(void Function(CategoryRestaurantsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryRestaurantsState build() => _build();

  _$CategoryRestaurantsState _build() {
    final _$result = _$v ??
        new _$CategoryRestaurantsState._(
            error: error,
            isLoading: isLoading,
            success: success,
            Index: Index,
            FilteredRestaurants: FilteredRestaurants,
            UnFilteredRestaurants: UnFilteredRestaurants);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
