// GENERATED CODE - DO NOT MODIFY BY HAND

part of hisUserProfile_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HisUserProfileState extends HisUserProfileState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? Follow_ISloading;
  @override
  final bool? AlreadyFollowing;
  @override
  final List<bool>? SelectedTap;
  @override
  final UserDataModel? UserData;

  factory _$HisUserProfileState(
          [void Function(HisUserProfileStateBuilder)? updates]) =>
      (new HisUserProfileStateBuilder()..update(updates))._build();

  _$HisUserProfileState._(
      {this.error,
      this.isLoading,
      this.success,
      this.Follow_ISloading,
      this.AlreadyFollowing,
      this.SelectedTap,
      this.UserData})
      : super._();

  @override
  HisUserProfileState rebuild(
          void Function(HisUserProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HisUserProfileStateBuilder toBuilder() =>
      new HisUserProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HisUserProfileState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        Follow_ISloading == other.Follow_ISloading &&
        AlreadyFollowing == other.AlreadyFollowing &&
        SelectedTap == other.SelectedTap &&
        UserData == other.UserData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Follow_ISloading.hashCode);
    _$hash = $jc(_$hash, AlreadyFollowing.hashCode);
    _$hash = $jc(_$hash, SelectedTap.hashCode);
    _$hash = $jc(_$hash, UserData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HisUserProfileState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Follow_ISloading', Follow_ISloading)
          ..add('AlreadyFollowing', AlreadyFollowing)
          ..add('SelectedTap', SelectedTap)
          ..add('UserData', UserData))
        .toString();
  }
}

class HisUserProfileStateBuilder
    implements Builder<HisUserProfileState, HisUserProfileStateBuilder> {
  _$HisUserProfileState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _Follow_ISloading;
  bool? get Follow_ISloading => _$this._Follow_ISloading;
  set Follow_ISloading(bool? Follow_ISloading) =>
      _$this._Follow_ISloading = Follow_ISloading;

  bool? _AlreadyFollowing;
  bool? get AlreadyFollowing => _$this._AlreadyFollowing;
  set AlreadyFollowing(bool? AlreadyFollowing) =>
      _$this._AlreadyFollowing = AlreadyFollowing;

  List<bool>? _SelectedTap;
  List<bool>? get SelectedTap => _$this._SelectedTap;
  set SelectedTap(List<bool>? SelectedTap) => _$this._SelectedTap = SelectedTap;

  UserDataModelBuilder? _UserData;
  UserDataModelBuilder get UserData =>
      _$this._UserData ??= new UserDataModelBuilder();
  set UserData(UserDataModelBuilder? UserData) => _$this._UserData = UserData;

  HisUserProfileStateBuilder();

  HisUserProfileStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _Follow_ISloading = $v.Follow_ISloading;
      _AlreadyFollowing = $v.AlreadyFollowing;
      _SelectedTap = $v.SelectedTap;
      _UserData = $v.UserData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HisUserProfileState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HisUserProfileState;
  }

  @override
  void update(void Function(HisUserProfileStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HisUserProfileState build() => _build();

  _$HisUserProfileState _build() {
    _$HisUserProfileState _$result;
    try {
      _$result = _$v ??
          new _$HisUserProfileState._(
              error: error,
              isLoading: isLoading,
              success: success,
              Follow_ISloading: Follow_ISloading,
              AlreadyFollowing: AlreadyFollowing,
              SelectedTap: SelectedTap,
              UserData: _UserData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'UserData';
        _UserData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HisUserProfileState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
