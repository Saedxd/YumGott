// GENERATED CODE - DO NOT MODIFY BY HAND

part of ContributeScreen_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomePageState extends HomePageState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? Like_isLoading;
  @override
  final bool? Save_isLoading;
  @override
  final bool? success;
  @override
  final bool? GetProductsSucess;
  @override
  final bool? GetProductsIsLoading;
  @override
  final bool? Searchsuccess;
  @override
  final int? Index;
  @override
  final bool? ShowPolicyContainer;
  @override
  final List<int>? start_Range_Price;
  @override
  final List<int>? End_Range_Price;
  @override
  final String? SelectedPriceValue;
  @override
  final String? SelectedEvaluationValue;
  @override
  final List<bool>? Posts_Likes;
  @override
  final List<int>? Posts_Likes_Count;
  @override
  final List<Video>? AllPosts;
  @override
  final GetAllProductsModel? GetAllProducts;
  @override
  final List<Product>? Filtered_Products;
  @override
  final List<Product>? UnFiltered_Products;

  factory _$HomePageState([void Function(HomePageStateBuilder)? updates]) =>
      (new HomePageStateBuilder()..update(updates))._build();

  _$HomePageState._(
      {this.error,
      this.isLoading,
      this.Like_isLoading,
      this.Save_isLoading,
      this.success,
      this.GetProductsSucess,
      this.GetProductsIsLoading,
      this.Searchsuccess,
      this.Index,
      this.ShowPolicyContainer,
      this.start_Range_Price,
      this.End_Range_Price,
      this.SelectedPriceValue,
      this.SelectedEvaluationValue,
      this.Posts_Likes,
      this.Posts_Likes_Count,
      this.AllPosts,
      this.GetAllProducts,
      this.Filtered_Products,
      this.UnFiltered_Products})
      : super._();

  @override
  HomePageState rebuild(void Function(HomePageStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomePageStateBuilder toBuilder() => new HomePageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomePageState &&
        error == other.error &&
        isLoading == other.isLoading &&
        Like_isLoading == other.Like_isLoading &&
        Save_isLoading == other.Save_isLoading &&
        success == other.success &&
        GetProductsSucess == other.GetProductsSucess &&
        GetProductsIsLoading == other.GetProductsIsLoading &&
        Searchsuccess == other.Searchsuccess &&
        Index == other.Index &&
        ShowPolicyContainer == other.ShowPolicyContainer &&
        start_Range_Price == other.start_Range_Price &&
        End_Range_Price == other.End_Range_Price &&
        SelectedPriceValue == other.SelectedPriceValue &&
        SelectedEvaluationValue == other.SelectedEvaluationValue &&
        Posts_Likes == other.Posts_Likes &&
        Posts_Likes_Count == other.Posts_Likes_Count &&
        AllPosts == other.AllPosts &&
        GetAllProducts == other.GetAllProducts &&
        Filtered_Products == other.Filtered_Products &&
        UnFiltered_Products == other.UnFiltered_Products;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, Like_isLoading.hashCode);
    _$hash = $jc(_$hash, Save_isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, GetProductsSucess.hashCode);
    _$hash = $jc(_$hash, GetProductsIsLoading.hashCode);
    _$hash = $jc(_$hash, Searchsuccess.hashCode);
    _$hash = $jc(_$hash, Index.hashCode);
    _$hash = $jc(_$hash, ShowPolicyContainer.hashCode);
    _$hash = $jc(_$hash, start_Range_Price.hashCode);
    _$hash = $jc(_$hash, End_Range_Price.hashCode);
    _$hash = $jc(_$hash, SelectedPriceValue.hashCode);
    _$hash = $jc(_$hash, SelectedEvaluationValue.hashCode);
    _$hash = $jc(_$hash, Posts_Likes.hashCode);
    _$hash = $jc(_$hash, Posts_Likes_Count.hashCode);
    _$hash = $jc(_$hash, AllPosts.hashCode);
    _$hash = $jc(_$hash, GetAllProducts.hashCode);
    _$hash = $jc(_$hash, Filtered_Products.hashCode);
    _$hash = $jc(_$hash, UnFiltered_Products.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomePageState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('Like_isLoading', Like_isLoading)
          ..add('Save_isLoading', Save_isLoading)
          ..add('success', success)
          ..add('GetProductsSucess', GetProductsSucess)
          ..add('GetProductsIsLoading', GetProductsIsLoading)
          ..add('Searchsuccess', Searchsuccess)
          ..add('Index', Index)
          ..add('ShowPolicyContainer', ShowPolicyContainer)
          ..add('start_Range_Price', start_Range_Price)
          ..add('End_Range_Price', End_Range_Price)
          ..add('SelectedPriceValue', SelectedPriceValue)
          ..add('SelectedEvaluationValue', SelectedEvaluationValue)
          ..add('Posts_Likes', Posts_Likes)
          ..add('Posts_Likes_Count', Posts_Likes_Count)
          ..add('AllPosts', AllPosts)
          ..add('GetAllProducts', GetAllProducts)
          ..add('Filtered_Products', Filtered_Products)
          ..add('UnFiltered_Products', UnFiltered_Products))
        .toString();
  }
}

class HomePageStateBuilder
    implements Builder<HomePageState, HomePageStateBuilder> {
  _$HomePageState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _Like_isLoading;
  bool? get Like_isLoading => _$this._Like_isLoading;
  set Like_isLoading(bool? Like_isLoading) =>
      _$this._Like_isLoading = Like_isLoading;

  bool? _Save_isLoading;
  bool? get Save_isLoading => _$this._Save_isLoading;
  set Save_isLoading(bool? Save_isLoading) =>
      _$this._Save_isLoading = Save_isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _GetProductsSucess;
  bool? get GetProductsSucess => _$this._GetProductsSucess;
  set GetProductsSucess(bool? GetProductsSucess) =>
      _$this._GetProductsSucess = GetProductsSucess;

  bool? _GetProductsIsLoading;
  bool? get GetProductsIsLoading => _$this._GetProductsIsLoading;
  set GetProductsIsLoading(bool? GetProductsIsLoading) =>
      _$this._GetProductsIsLoading = GetProductsIsLoading;

  bool? _Searchsuccess;
  bool? get Searchsuccess => _$this._Searchsuccess;
  set Searchsuccess(bool? Searchsuccess) =>
      _$this._Searchsuccess = Searchsuccess;

  int? _Index;
  int? get Index => _$this._Index;
  set Index(int? Index) => _$this._Index = Index;

  bool? _ShowPolicyContainer;
  bool? get ShowPolicyContainer => _$this._ShowPolicyContainer;
  set ShowPolicyContainer(bool? ShowPolicyContainer) =>
      _$this._ShowPolicyContainer = ShowPolicyContainer;

  List<int>? _start_Range_Price;
  List<int>? get start_Range_Price => _$this._start_Range_Price;
  set start_Range_Price(List<int>? start_Range_Price) =>
      _$this._start_Range_Price = start_Range_Price;

  List<int>? _End_Range_Price;
  List<int>? get End_Range_Price => _$this._End_Range_Price;
  set End_Range_Price(List<int>? End_Range_Price) =>
      _$this._End_Range_Price = End_Range_Price;

  String? _SelectedPriceValue;
  String? get SelectedPriceValue => _$this._SelectedPriceValue;
  set SelectedPriceValue(String? SelectedPriceValue) =>
      _$this._SelectedPriceValue = SelectedPriceValue;

  String? _SelectedEvaluationValue;
  String? get SelectedEvaluationValue => _$this._SelectedEvaluationValue;
  set SelectedEvaluationValue(String? SelectedEvaluationValue) =>
      _$this._SelectedEvaluationValue = SelectedEvaluationValue;

  List<bool>? _Posts_Likes;
  List<bool>? get Posts_Likes => _$this._Posts_Likes;
  set Posts_Likes(List<bool>? Posts_Likes) => _$this._Posts_Likes = Posts_Likes;

  List<int>? _Posts_Likes_Count;
  List<int>? get Posts_Likes_Count => _$this._Posts_Likes_Count;
  set Posts_Likes_Count(List<int>? Posts_Likes_Count) =>
      _$this._Posts_Likes_Count = Posts_Likes_Count;

  List<Video>? _AllPosts;
  List<Video>? get AllPosts => _$this._AllPosts;
  set AllPosts(List<Video>? AllPosts) => _$this._AllPosts = AllPosts;

  GetAllProductsModelBuilder? _GetAllProducts;
  GetAllProductsModelBuilder get GetAllProducts =>
      _$this._GetAllProducts ??= new GetAllProductsModelBuilder();
  set GetAllProducts(GetAllProductsModelBuilder? GetAllProducts) =>
      _$this._GetAllProducts = GetAllProducts;

  List<Product>? _Filtered_Products;
  List<Product>? get Filtered_Products => _$this._Filtered_Products;
  set Filtered_Products(List<Product>? Filtered_Products) =>
      _$this._Filtered_Products = Filtered_Products;

  List<Product>? _UnFiltered_Products;
  List<Product>? get UnFiltered_Products => _$this._UnFiltered_Products;
  set UnFiltered_Products(List<Product>? UnFiltered_Products) =>
      _$this._UnFiltered_Products = UnFiltered_Products;

  HomePageStateBuilder();

  HomePageStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _Like_isLoading = $v.Like_isLoading;
      _Save_isLoading = $v.Save_isLoading;
      _success = $v.success;
      _GetProductsSucess = $v.GetProductsSucess;
      _GetProductsIsLoading = $v.GetProductsIsLoading;
      _Searchsuccess = $v.Searchsuccess;
      _Index = $v.Index;
      _ShowPolicyContainer = $v.ShowPolicyContainer;
      _start_Range_Price = $v.start_Range_Price;
      _End_Range_Price = $v.End_Range_Price;
      _SelectedPriceValue = $v.SelectedPriceValue;
      _SelectedEvaluationValue = $v.SelectedEvaluationValue;
      _Posts_Likes = $v.Posts_Likes;
      _Posts_Likes_Count = $v.Posts_Likes_Count;
      _AllPosts = $v.AllPosts;
      _GetAllProducts = $v.GetAllProducts?.toBuilder();
      _Filtered_Products = $v.Filtered_Products;
      _UnFiltered_Products = $v.UnFiltered_Products;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomePageState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomePageState;
  }

  @override
  void update(void Function(HomePageStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomePageState build() => _build();

  _$HomePageState _build() {
    _$HomePageState _$result;
    try {
      _$result = _$v ??
          new _$HomePageState._(
              error: error,
              isLoading: isLoading,
              Like_isLoading: Like_isLoading,
              Save_isLoading: Save_isLoading,
              success: success,
              GetProductsSucess: GetProductsSucess,
              GetProductsIsLoading: GetProductsIsLoading,
              Searchsuccess: Searchsuccess,
              Index: Index,
              ShowPolicyContainer: ShowPolicyContainer,
              start_Range_Price: start_Range_Price,
              End_Range_Price: End_Range_Price,
              SelectedPriceValue: SelectedPriceValue,
              SelectedEvaluationValue: SelectedEvaluationValue,
              Posts_Likes: Posts_Likes,
              Posts_Likes_Count: Posts_Likes_Count,
              AllPosts: AllPosts,
              GetAllProducts: _GetAllProducts?.build(),
              Filtered_Products: Filtered_Products,
              UnFiltered_Products: UnFiltered_Products);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'GetAllProducts';
        _GetAllProducts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HomePageState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
