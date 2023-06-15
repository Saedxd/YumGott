// GENERATED CODE - DO NOT MODIFY BY HAND

part of Camera_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CameraState extends CameraState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? isRecording_Now;
  @override
  final bool? Check_IfInitilized;
  @override
  final int? SelectedFilter_Index;

  factory _$CameraState([void Function(CameraStateBuilder)? updates]) =>
      (new CameraStateBuilder()..update(updates))._build();

  _$CameraState._(
      {this.error,
      this.isLoading,
      this.success,
      this.isRecording_Now,
      this.Check_IfInitilized,
      this.SelectedFilter_Index})
      : super._();

  @override
  CameraState rebuild(void Function(CameraStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CameraStateBuilder toBuilder() => new CameraStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CameraState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        isRecording_Now == other.isRecording_Now &&
        Check_IfInitilized == other.Check_IfInitilized &&
        SelectedFilter_Index == other.SelectedFilter_Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, isRecording_Now.hashCode);
    _$hash = $jc(_$hash, Check_IfInitilized.hashCode);
    _$hash = $jc(_$hash, SelectedFilter_Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CameraState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('isRecording_Now', isRecording_Now)
          ..add('Check_IfInitilized', Check_IfInitilized)
          ..add('SelectedFilter_Index', SelectedFilter_Index))
        .toString();
  }
}

class CameraStateBuilder implements Builder<CameraState, CameraStateBuilder> {
  _$CameraState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _isRecording_Now;
  bool? get isRecording_Now => _$this._isRecording_Now;
  set isRecording_Now(bool? isRecording_Now) =>
      _$this._isRecording_Now = isRecording_Now;

  bool? _Check_IfInitilized;
  bool? get Check_IfInitilized => _$this._Check_IfInitilized;
  set Check_IfInitilized(bool? Check_IfInitilized) =>
      _$this._Check_IfInitilized = Check_IfInitilized;

  int? _SelectedFilter_Index;
  int? get SelectedFilter_Index => _$this._SelectedFilter_Index;
  set SelectedFilter_Index(int? SelectedFilter_Index) =>
      _$this._SelectedFilter_Index = SelectedFilter_Index;

  CameraStateBuilder();

  CameraStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _isRecording_Now = $v.isRecording_Now;
      _Check_IfInitilized = $v.Check_IfInitilized;
      _SelectedFilter_Index = $v.SelectedFilter_Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CameraState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CameraState;
  }

  @override
  void update(void Function(CameraStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CameraState build() => _build();

  _$CameraState _build() {
    final _$result = _$v ??
        new _$CameraState._(
            error: error,
            isLoading: isLoading,
            success: success,
            isRecording_Now: isRecording_Now,
            Check_IfInitilized: Check_IfInitilized,
            SelectedFilter_Index: SelectedFilter_Index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
