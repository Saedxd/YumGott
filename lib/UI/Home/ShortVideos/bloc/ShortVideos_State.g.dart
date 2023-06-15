// GENERATED CODE - DO NOT MODIFY BY HAND

part of ShortVideos_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShortVideosState extends ShortVideosState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? KeyBoardStatus;
  @override
  final bool? success;
  @override
  final List<Comment>? AllComments;

  factory _$ShortVideosState(
          [void Function(ShortVideosStateBuilder)? updates]) =>
      (new ShortVideosStateBuilder()..update(updates))._build();

  _$ShortVideosState._(
      {this.error,
      this.isLoading,
      this.KeyBoardStatus,
      this.success,
      this.AllComments})
      : super._();

  @override
  ShortVideosState rebuild(void Function(ShortVideosStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShortVideosStateBuilder toBuilder() =>
      new ShortVideosStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShortVideosState &&
        error == other.error &&
        isLoading == other.isLoading &&
        KeyBoardStatus == other.KeyBoardStatus &&
        success == other.success &&
        AllComments == other.AllComments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, KeyBoardStatus.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, AllComments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShortVideosState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('KeyBoardStatus', KeyBoardStatus)
          ..add('success', success)
          ..add('AllComments', AllComments))
        .toString();
  }
}

class ShortVideosStateBuilder
    implements Builder<ShortVideosState, ShortVideosStateBuilder> {
  _$ShortVideosState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _KeyBoardStatus;
  bool? get KeyBoardStatus => _$this._KeyBoardStatus;
  set KeyBoardStatus(bool? KeyBoardStatus) =>
      _$this._KeyBoardStatus = KeyBoardStatus;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  List<Comment>? _AllComments;
  List<Comment>? get AllComments => _$this._AllComments;
  set AllComments(List<Comment>? AllComments) =>
      _$this._AllComments = AllComments;

  ShortVideosStateBuilder();

  ShortVideosStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _KeyBoardStatus = $v.KeyBoardStatus;
      _success = $v.success;
      _AllComments = $v.AllComments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShortVideosState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShortVideosState;
  }

  @override
  void update(void Function(ShortVideosStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShortVideosState build() => _build();

  _$ShortVideosState _build() {
    final _$result = _$v ??
        new _$ShortVideosState._(
            error: error,
            isLoading: isLoading,
            KeyBoardStatus: KeyBoardStatus,
            success: success,
            AllComments: AllComments);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
