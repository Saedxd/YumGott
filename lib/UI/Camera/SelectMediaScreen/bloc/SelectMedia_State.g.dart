// GENERATED CODE - DO NOT MODIFY BY HAND

part of SelectMedia_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectMediaState extends SelectMediaState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? VideoChange_Isloading;
  @override
  final String? SelectedVideoPath;

  factory _$SelectMediaState(
          [void Function(SelectMediaStateBuilder)? updates]) =>
      (new SelectMediaStateBuilder()..update(updates))._build();

  _$SelectMediaState._(
      {this.error,
      this.isLoading,
      this.success,
      this.VideoChange_Isloading,
      this.SelectedVideoPath})
      : super._();

  @override
  SelectMediaState rebuild(void Function(SelectMediaStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectMediaStateBuilder toBuilder() =>
      new SelectMediaStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectMediaState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        VideoChange_Isloading == other.VideoChange_Isloading &&
        SelectedVideoPath == other.SelectedVideoPath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, VideoChange_Isloading.hashCode);
    _$hash = $jc(_$hash, SelectedVideoPath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectMediaState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('VideoChange_Isloading', VideoChange_Isloading)
          ..add('SelectedVideoPath', SelectedVideoPath))
        .toString();
  }
}

class SelectMediaStateBuilder
    implements Builder<SelectMediaState, SelectMediaStateBuilder> {
  _$SelectMediaState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _VideoChange_Isloading;
  bool? get VideoChange_Isloading => _$this._VideoChange_Isloading;
  set VideoChange_Isloading(bool? VideoChange_Isloading) =>
      _$this._VideoChange_Isloading = VideoChange_Isloading;

  String? _SelectedVideoPath;
  String? get SelectedVideoPath => _$this._SelectedVideoPath;
  set SelectedVideoPath(String? SelectedVideoPath) =>
      _$this._SelectedVideoPath = SelectedVideoPath;

  SelectMediaStateBuilder();

  SelectMediaStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _VideoChange_Isloading = $v.VideoChange_Isloading;
      _SelectedVideoPath = $v.SelectedVideoPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectMediaState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectMediaState;
  }

  @override
  void update(void Function(SelectMediaStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectMediaState build() => _build();

  _$SelectMediaState _build() {
    final _$result = _$v ??
        new _$SelectMediaState._(
            error: error,
            isLoading: isLoading,
            success: success,
            VideoChange_Isloading: VideoChange_Isloading,
            SelectedVideoPath: SelectedVideoPath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
