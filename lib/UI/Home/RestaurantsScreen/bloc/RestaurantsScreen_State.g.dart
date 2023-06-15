// GENERATED CODE - DO NOT MODIFY BY HAND

part of RestaurantsScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestaurantsScreenState extends RestaurantsScreenState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? Searchsuccess;
  @override
  final bool? GetRestaurantSuccess;
  @override
  final bool? GetRestaurantisLoading;
  @override
  final bool? GetCategorysuccess;
  @override
  final bool? GetCategoryisloading;
  @override
  final bool? success;
  @override
  final List<User>? FilteredRestaurants;
  @override
  final List<User>? UnFilteredRestaurants;
  @override
  final String? SelectedCity;

  factory _$RestaurantsScreenState(
          [void Function(RestaurantsScreenStateBuilder)? updates]) =>
      (new RestaurantsScreenStateBuilder()..update(updates))._build();

  _$RestaurantsScreenState._(
      {this.error,
      this.isLoading,
      this.Searchsuccess,
      this.GetRestaurantSuccess,
      this.GetRestaurantisLoading,
      this.GetCategorysuccess,
      this.GetCategoryisloading,
      this.success,
      this.FilteredRestaurants,
      this.UnFilteredRestaurants,
      this.SelectedCity})
      : super._();

  @override
  RestaurantsScreenState rebuild(
          void Function(RestaurantsScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantsScreenStateBuilder toBuilder() =>
      new RestaurantsScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantsScreenState &&
        error == other.error &&
        isLoading == other.isLoading &&
        Searchsuccess == other.Searchsuccess &&
        GetRestaurantSuccess == other.GetRestaurantSuccess &&
        GetRestaurantisLoading == other.GetRestaurantisLoading &&
        GetCategorysuccess == other.GetCategorysuccess &&
        GetCategoryisloading == other.GetCategoryisloading &&
        success == other.success &&
        FilteredRestaurants == other.FilteredRestaurants &&
        UnFilteredRestaurants == other.UnFilteredRestaurants &&
        SelectedCity == other.SelectedCity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, Searchsuccess.hashCode);
    _$hash = $jc(_$hash, GetRestaurantSuccess.hashCode);
    _$hash = $jc(_$hash, GetRestaurantisLoading.hashCode);
    _$hash = $jc(_$hash, GetCategorysuccess.hashCode);
    _$hash = $jc(_$hash, GetCategoryisloading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, FilteredRestaurants.hashCode);
    _$hash = $jc(_$hash, UnFilteredRestaurants.hashCode);
    _$hash = $jc(_$hash, SelectedCity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantsScreenState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('Searchsuccess', Searchsuccess)
          ..add('GetRestaurantSuccess', GetRestaurantSuccess)
          ..add('GetRestaurantisLoading', GetRestaurantisLoading)
          ..add('GetCategorysuccess', GetCategorysuccess)
          ..add('GetCategoryisloading', GetCategoryisloading)
          ..add('success', success)
          ..add('FilteredRestaurants', FilteredRestaurants)
          ..add('UnFilteredRestaurants', UnFilteredRestaurants)
          ..add('SelectedCity', SelectedCity))
        .toString();
  }
}

class RestaurantsScreenStateBuilder
    implements Builder<RestaurantsScreenState, RestaurantsScreenStateBuilder> {
  _$RestaurantsScreenState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _Searchsuccess;
  bool? get Searchsuccess => _$this._Searchsuccess;
  set Searchsuccess(bool? Searchsuccess) =>
      _$this._Searchsuccess = Searchsuccess;

  bool? _GetRestaurantSuccess;
  bool? get GetRestaurantSuccess => _$this._GetRestaurantSuccess;
  set GetRestaurantSuccess(bool? GetRestaurantSuccess) =>
      _$this._GetRestaurantSuccess = GetRestaurantSuccess;

  bool? _GetRestaurantisLoading;
  bool? get GetRestaurantisLoading => _$this._GetRestaurantisLoading;
  set GetRestaurantisLoading(bool? GetRestaurantisLoading) =>
      _$this._GetRestaurantisLoading = GetRestaurantisLoading;

  bool? _GetCategorysuccess;
  bool? get GetCategorysuccess => _$this._GetCategorysuccess;
  set GetCategorysuccess(bool? GetCategorysuccess) =>
      _$this._GetCategorysuccess = GetCategorysuccess;

  bool? _GetCategoryisloading;
  bool? get GetCategoryisloading => _$this._GetCategoryisloading;
  set GetCategoryisloading(bool? GetCategoryisloading) =>
      _$this._GetCategoryisloading = GetCategoryisloading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  List<User>? _FilteredRestaurants;
  List<User>? get FilteredRestaurants => _$this._FilteredRestaurants;
  set FilteredRestaurants(List<User>? FilteredRestaurants) =>
      _$this._FilteredRestaurants = FilteredRestaurants;

  List<User>? _UnFilteredRestaurants;
  List<User>? get UnFilteredRestaurants => _$this._UnFilteredRestaurants;
  set UnFilteredRestaurants(List<User>? UnFilteredRestaurants) =>
      _$this._UnFilteredRestaurants = UnFilteredRestaurants;

  String? _SelectedCity;
  String? get SelectedCity => _$this._SelectedCity;
  set SelectedCity(String? SelectedCity) => _$this._SelectedCity = SelectedCity;

  RestaurantsScreenStateBuilder();

  RestaurantsScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _Searchsuccess = $v.Searchsuccess;
      _GetRestaurantSuccess = $v.GetRestaurantSuccess;
      _GetRestaurantisLoading = $v.GetRestaurantisLoading;
      _GetCategorysuccess = $v.GetCategorysuccess;
      _GetCategoryisloading = $v.GetCategoryisloading;
      _success = $v.success;
      _FilteredRestaurants = $v.FilteredRestaurants;
      _UnFilteredRestaurants = $v.UnFilteredRestaurants;
      _SelectedCity = $v.SelectedCity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantsScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantsScreenState;
  }

  @override
  void update(void Function(RestaurantsScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantsScreenState build() => _build();

  _$RestaurantsScreenState _build() {
    final _$result = _$v ??
        new _$RestaurantsScreenState._(
            error: error,
            isLoading: isLoading,
            Searchsuccess: Searchsuccess,
            GetRestaurantSuccess: GetRestaurantSuccess,
            GetRestaurantisLoading: GetRestaurantisLoading,
            GetCategorysuccess: GetCategorysuccess,
            GetCategoryisloading: GetCategoryisloading,
            success: success,
            FilteredRestaurants: FilteredRestaurants,
            UnFilteredRestaurants: UnFilteredRestaurants,
            SelectedCity: SelectedCity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
