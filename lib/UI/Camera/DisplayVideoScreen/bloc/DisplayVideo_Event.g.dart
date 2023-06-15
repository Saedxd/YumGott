// GENERATED CODE - DO NOT MODIFY BY HAND

part of DisplayVideo_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSelectedFilter extends ChangeSelectedFilter {
  @override
  final int? index;

  factory _$ChangeSelectedFilter(
          [void Function(ChangeSelectedFilterBuilder)? updates]) =>
      (new ChangeSelectedFilterBuilder()..update(updates))._build();

  _$ChangeSelectedFilter._({this.index}) : super._();

  @override
  ChangeSelectedFilter rebuild(
          void Function(ChangeSelectedFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedFilterBuilder toBuilder() =>
      new ChangeSelectedFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedFilter && index == other.index;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeSelectedFilter')
          ..add('index', index))
        .toString();
  }
}

class ChangeSelectedFilterBuilder
    implements Builder<ChangeSelectedFilter, ChangeSelectedFilterBuilder> {
  _$ChangeSelectedFilter? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ChangeSelectedFilterBuilder();

  ChangeSelectedFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedFilter;
  }

  @override
  void update(void Function(ChangeSelectedFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedFilter build() => _build();

  _$ChangeSelectedFilter _build() {
    final _$result = _$v ?? new _$ChangeSelectedFilter._(index: index);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeRecordingStatus extends ChangeRecordingStatus {
  @override
  final bool? Value;

  factory _$ChangeRecordingStatus(
          [void Function(ChangeRecordingStatusBuilder)? updates]) =>
      (new ChangeRecordingStatusBuilder()..update(updates))._build();

  _$ChangeRecordingStatus._({this.Value}) : super._();

  @override
  ChangeRecordingStatus rebuild(
          void Function(ChangeRecordingStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeRecordingStatusBuilder toBuilder() =>
      new ChangeRecordingStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeRecordingStatus && Value == other.Value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeRecordingStatus')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeRecordingStatusBuilder
    implements Builder<ChangeRecordingStatus, ChangeRecordingStatusBuilder> {
  _$ChangeRecordingStatus? _$v;

  bool? _Value;
  bool? get Value => _$this._Value;
  set Value(bool? Value) => _$this._Value = Value;

  ChangeRecordingStatusBuilder();

  ChangeRecordingStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeRecordingStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeRecordingStatus;
  }

  @override
  void update(void Function(ChangeRecordingStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeRecordingStatus build() => _build();

  _$ChangeRecordingStatus _build() {
    final _$result = _$v ?? new _$ChangeRecordingStatus._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$UploadReel extends UploadReel {
  @override
  final int? meal_id;
  @override
  final File? video;

  factory _$UploadReel([void Function(UploadReelBuilder)? updates]) =>
      (new UploadReelBuilder()..update(updates))._build();

  _$UploadReel._({this.meal_id, this.video}) : super._();

  @override
  UploadReel rebuild(void Function(UploadReelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadReelBuilder toBuilder() => new UploadReelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadReel &&
        meal_id == other.meal_id &&
        video == other.video;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, meal_id.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UploadReel')
          ..add('meal_id', meal_id)
          ..add('video', video))
        .toString();
  }
}

class UploadReelBuilder implements Builder<UploadReel, UploadReelBuilder> {
  _$UploadReel? _$v;

  int? _meal_id;
  int? get meal_id => _$this._meal_id;
  set meal_id(int? meal_id) => _$this._meal_id = meal_id;

  File? _video;
  File? get video => _$this._video;
  set video(File? video) => _$this._video = video;

  UploadReelBuilder();

  UploadReelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meal_id = $v.meal_id;
      _video = $v.video;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadReel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadReel;
  }

  @override
  void update(void Function(UploadReelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadReel build() => _build();

  _$UploadReel _build() {
    final _$result = _$v ?? new _$UploadReel._(meal_id: meal_id, video: video);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
