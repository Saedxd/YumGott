// GENERATED CODE - DO NOT MODIFY BY HAND

part of DisplayVideo_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisplayVidoeState extends DisplayVidoeState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final bool? isRecording_Now;
  @override
  final AllVidoesListModel? data;
  @override
  final int? SelectedFilter_Index;

  factory _$DisplayVidoeState(
          [void Function(DisplayVidoeStateBuilder)? updates]) =>
      (new DisplayVidoeStateBuilder()..update(updates))._build();

  _$DisplayVidoeState._(
      {this.error,
      this.isLoading,
      this.success,
      this.isRecording_Now,
      this.data,
      this.SelectedFilter_Index})
      : super._();

  @override
  DisplayVidoeState rebuild(void Function(DisplayVidoeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisplayVidoeStateBuilder toBuilder() =>
      new DisplayVidoeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisplayVidoeState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        isRecording_Now == other.isRecording_Now &&
        data == other.data &&
        SelectedFilter_Index == other.SelectedFilter_Index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, isRecording_Now.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, SelectedFilter_Index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DisplayVidoeState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('isRecording_Now', isRecording_Now)
          ..add('data', data)
          ..add('SelectedFilter_Index', SelectedFilter_Index))
        .toString();
  }
}

class DisplayVidoeStateBuilder
    implements Builder<DisplayVidoeState, DisplayVidoeStateBuilder> {
  _$DisplayVidoeState? _$v;

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

  AllVidoesListModelBuilder? _data;
  AllVidoesListModelBuilder get data =>
      _$this._data ??= new AllVidoesListModelBuilder();
  set data(AllVidoesListModelBuilder? data) => _$this._data = data;

  int? _SelectedFilter_Index;
  int? get SelectedFilter_Index => _$this._SelectedFilter_Index;
  set SelectedFilter_Index(int? SelectedFilter_Index) =>
      _$this._SelectedFilter_Index = SelectedFilter_Index;

  DisplayVidoeStateBuilder();

  DisplayVidoeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _isRecording_Now = $v.isRecording_Now;
      _data = $v.data?.toBuilder();
      _SelectedFilter_Index = $v.SelectedFilter_Index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisplayVidoeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisplayVidoeState;
  }

  @override
  void update(void Function(DisplayVidoeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisplayVidoeState build() => _build();

  _$DisplayVidoeState _build() {
    _$DisplayVidoeState _$result;
    try {
      _$result = _$v ??
          new _$DisplayVidoeState._(
              error: error,
              isLoading: isLoading,
              success: success,
              isRecording_Now: isRecording_Now,
              data: _data?.build(),
              SelectedFilter_Index: SelectedFilter_Index);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisplayVidoeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
