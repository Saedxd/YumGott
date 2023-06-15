// GENERATED CODE - DO NOT MODIFY BY HAND

part of EditRestaurantProfile_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditRestaurantProfileState extends EditRestaurantProfileState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? CheckBoxisLoading;
  @override
  final bool? success;
  @override
  final File? Cover_PhotoFile;
  @override
  final File? Profile_PhotoFile;
  @override
  final String? StartTime;
  @override
  final String? EndTime;
  @override
  final List<bool>? CheckBoxStatusesList;

  factory _$EditRestaurantProfileState(
          [void Function(EditRestaurantProfileStateBuilder)? updates]) =>
      (new EditRestaurantProfileStateBuilder()..update(updates))._build();

  _$EditRestaurantProfileState._(
      {this.error,
      this.isLoading,
      this.CheckBoxisLoading,
      this.success,
      this.Cover_PhotoFile,
      this.Profile_PhotoFile,
      this.StartTime,
      this.EndTime,
      this.CheckBoxStatusesList})
      : super._();

  @override
  EditRestaurantProfileState rebuild(
          void Function(EditRestaurantProfileStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditRestaurantProfileStateBuilder toBuilder() =>
      new EditRestaurantProfileStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditRestaurantProfileState &&
        error == other.error &&
        isLoading == other.isLoading &&
        CheckBoxisLoading == other.CheckBoxisLoading &&
        success == other.success &&
        Cover_PhotoFile == other.Cover_PhotoFile &&
        Profile_PhotoFile == other.Profile_PhotoFile &&
        StartTime == other.StartTime &&
        EndTime == other.EndTime &&
        CheckBoxStatusesList == other.CheckBoxStatusesList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, CheckBoxisLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Cover_PhotoFile.hashCode);
    _$hash = $jc(_$hash, Profile_PhotoFile.hashCode);
    _$hash = $jc(_$hash, StartTime.hashCode);
    _$hash = $jc(_$hash, EndTime.hashCode);
    _$hash = $jc(_$hash, CheckBoxStatusesList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditRestaurantProfileState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('CheckBoxisLoading', CheckBoxisLoading)
          ..add('success', success)
          ..add('Cover_PhotoFile', Cover_PhotoFile)
          ..add('Profile_PhotoFile', Profile_PhotoFile)
          ..add('StartTime', StartTime)
          ..add('EndTime', EndTime)
          ..add('CheckBoxStatusesList', CheckBoxStatusesList))
        .toString();
  }
}

class EditRestaurantProfileStateBuilder
    implements
        Builder<EditRestaurantProfileState, EditRestaurantProfileStateBuilder> {
  _$EditRestaurantProfileState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _CheckBoxisLoading;
  bool? get CheckBoxisLoading => _$this._CheckBoxisLoading;
  set CheckBoxisLoading(bool? CheckBoxisLoading) =>
      _$this._CheckBoxisLoading = CheckBoxisLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  File? _Cover_PhotoFile;
  File? get Cover_PhotoFile => _$this._Cover_PhotoFile;
  set Cover_PhotoFile(File? Cover_PhotoFile) =>
      _$this._Cover_PhotoFile = Cover_PhotoFile;

  File? _Profile_PhotoFile;
  File? get Profile_PhotoFile => _$this._Profile_PhotoFile;
  set Profile_PhotoFile(File? Profile_PhotoFile) =>
      _$this._Profile_PhotoFile = Profile_PhotoFile;

  String? _StartTime;
  String? get StartTime => _$this._StartTime;
  set StartTime(String? StartTime) => _$this._StartTime = StartTime;

  String? _EndTime;
  String? get EndTime => _$this._EndTime;
  set EndTime(String? EndTime) => _$this._EndTime = EndTime;

  List<bool>? _CheckBoxStatusesList;
  List<bool>? get CheckBoxStatusesList => _$this._CheckBoxStatusesList;
  set CheckBoxStatusesList(List<bool>? CheckBoxStatusesList) =>
      _$this._CheckBoxStatusesList = CheckBoxStatusesList;

  EditRestaurantProfileStateBuilder();

  EditRestaurantProfileStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _CheckBoxisLoading = $v.CheckBoxisLoading;
      _success = $v.success;
      _Cover_PhotoFile = $v.Cover_PhotoFile;
      _Profile_PhotoFile = $v.Profile_PhotoFile;
      _StartTime = $v.StartTime;
      _EndTime = $v.EndTime;
      _CheckBoxStatusesList = $v.CheckBoxStatusesList;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditRestaurantProfileState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditRestaurantProfileState;
  }

  @override
  void update(void Function(EditRestaurantProfileStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditRestaurantProfileState build() => _build();

  _$EditRestaurantProfileState _build() {
    final _$result = _$v ??
        new _$EditRestaurantProfileState._(
            error: error,
            isLoading: isLoading,
            CheckBoxisLoading: CheckBoxisLoading,
            success: success,
            Cover_PhotoFile: Cover_PhotoFile,
            Profile_PhotoFile: Profile_PhotoFile,
            StartTime: StartTime,
            EndTime: EndTime,
            CheckBoxStatusesList: CheckBoxStatusesList);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
