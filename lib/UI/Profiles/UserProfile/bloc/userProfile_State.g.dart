// GENERATED CODE - DO NOT MODIFY BY HAND

part of userProfile_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserProfileState extends UserProfileState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final List<bool>? SelectedTap;
  @override
  final UserDataModel? UserData;

  factory _$UserProfileState(
          [void Function(UserProfileStateBuilder)? updates]) =>
      (new UserProfileStateBuilder()..update(updates))._build();

  _$UserProfileState._(
      {this.error,
      this.isLoading,
      this.success,
      this.SelectedTap,
      this.UserData})
      : super._();

  @override
  UserProfileState rebuild(void Function(UserProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileStateBuilder toBuilder() =>
      new UserProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfileState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        SelectedTap == other.SelectedTap &&
        UserData == other.UserData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, SelectedTap.hashCode);
    _$hash = $jc(_$hash, UserData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserProfileState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('SelectedTap', SelectedTap)
          ..add('UserData', UserData))
        .toString();
  }
}

class UserProfileStateBuilder
    implements Builder<UserProfileState, UserProfileStateBuilder> {
  _$UserProfileState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  List<bool>? _SelectedTap;
  List<bool>? get SelectedTap => _$this._SelectedTap;
  set SelectedTap(List<bool>? SelectedTap) => _$this._SelectedTap = SelectedTap;

  UserDataModelBuilder? _UserData;
  UserDataModelBuilder get UserData =>
      _$this._UserData ??= new UserDataModelBuilder();
  set UserData(UserDataModelBuilder? UserData) => _$this._UserData = UserData;

  UserProfileStateBuilder();

  UserProfileStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _SelectedTap = $v.SelectedTap;
      _UserData = $v.UserData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfileState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserProfileState;
  }

  @override
  void update(void Function(UserProfileStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserProfileState build() => _build();

  _$UserProfileState _build() {
    _$UserProfileState _$result;
    try {
      _$result = _$v ??
          new _$UserProfileState._(
              error: error,
              isLoading: isLoading,
              success: success,
              SelectedTap: SelectedTap,
              UserData: _UserData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'UserData';
        _UserData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserProfileState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
