// GENERATED CODE - DO NOT MODIFY BY HAND

part of EditRestaurantProfile_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePage extends ChangePage {
  @override
  final int? index;

  factory _$ChangePage([void Function(ChangePageBuilder)? updates]) =>
      (new ChangePageBuilder()..update(updates))._build();

  _$ChangePage._({this.index}) : super._();

  @override
  ChangePage rebuild(void Function(ChangePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePageBuilder toBuilder() => new ChangePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePage && index == other.index;
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
    return (newBuiltValueToStringHelper(r'ChangePage')..add('index', index))
        .toString();
  }
}

class ChangePageBuilder implements Builder<ChangePage, ChangePageBuilder> {
  _$ChangePage? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ChangePageBuilder();

  ChangePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePage;
  }

  @override
  void update(void Function(ChangePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePage build() => _build();

  _$ChangePage _build() {
    final _$result = _$v ?? new _$ChangePage._(index: index);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeStartTime extends ChangeStartTime {
  @override
  final String? Value;

  factory _$ChangeStartTime([void Function(ChangeStartTimeBuilder)? updates]) =>
      (new ChangeStartTimeBuilder()..update(updates))._build();

  _$ChangeStartTime._({this.Value}) : super._();

  @override
  ChangeStartTime rebuild(void Function(ChangeStartTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStartTimeBuilder toBuilder() =>
      new ChangeStartTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeStartTime && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeStartTime')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeStartTimeBuilder
    implements Builder<ChangeStartTime, ChangeStartTimeBuilder> {
  _$ChangeStartTime? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeStartTimeBuilder();

  ChangeStartTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeStartTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeStartTime;
  }

  @override
  void update(void Function(ChangeStartTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeStartTime build() => _build();

  _$ChangeStartTime _build() {
    final _$result = _$v ?? new _$ChangeStartTime._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeEndTime extends ChangeEndTime {
  @override
  final String? Value;

  factory _$ChangeEndTime([void Function(ChangeEndTimeBuilder)? updates]) =>
      (new ChangeEndTimeBuilder()..update(updates))._build();

  _$ChangeEndTime._({this.Value}) : super._();

  @override
  ChangeEndTime rebuild(void Function(ChangeEndTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeEndTimeBuilder toBuilder() => new ChangeEndTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeEndTime && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeEndTime')..add('Value', Value))
        .toString();
  }
}

class ChangeEndTimeBuilder
    implements Builder<ChangeEndTime, ChangeEndTimeBuilder> {
  _$ChangeEndTime? _$v;

  String? _Value;
  String? get Value => _$this._Value;
  set Value(String? Value) => _$this._Value = Value;

  ChangeEndTimeBuilder();

  ChangeEndTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeEndTime other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeEndTime;
  }

  @override
  void update(void Function(ChangeEndTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeEndTime build() => _build();

  _$ChangeEndTime _build() {
    final _$result = _$v ?? new _$ChangeEndTime._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeCoverImage extends ChangeCoverImage {
  @override
  final File? Value;

  factory _$ChangeCoverImage(
          [void Function(ChangeCoverImageBuilder)? updates]) =>
      (new ChangeCoverImageBuilder()..update(updates))._build();

  _$ChangeCoverImage._({this.Value}) : super._();

  @override
  ChangeCoverImage rebuild(void Function(ChangeCoverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCoverImageBuilder toBuilder() =>
      new ChangeCoverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCoverImage && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeCoverImage')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeCoverImageBuilder
    implements Builder<ChangeCoverImage, ChangeCoverImageBuilder> {
  _$ChangeCoverImage? _$v;

  File? _Value;
  File? get Value => _$this._Value;
  set Value(File? Value) => _$this._Value = Value;

  ChangeCoverImageBuilder();

  ChangeCoverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCoverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeCoverImage;
  }

  @override
  void update(void Function(ChangeCoverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCoverImage build() => _build();

  _$ChangeCoverImage _build() {
    final _$result = _$v ?? new _$ChangeCoverImage._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeProfileImage extends ChangeProfileImage {
  @override
  final File? Value;

  factory _$ChangeProfileImage(
          [void Function(ChangeProfileImageBuilder)? updates]) =>
      (new ChangeProfileImageBuilder()..update(updates))._build();

  _$ChangeProfileImage._({this.Value}) : super._();

  @override
  ChangeProfileImage rebuild(
          void Function(ChangeProfileImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeProfileImageBuilder toBuilder() =>
      new ChangeProfileImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeProfileImage && Value == other.Value;
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
    return (newBuiltValueToStringHelper(r'ChangeProfileImage')
          ..add('Value', Value))
        .toString();
  }
}

class ChangeProfileImageBuilder
    implements Builder<ChangeProfileImage, ChangeProfileImageBuilder> {
  _$ChangeProfileImage? _$v;

  File? _Value;
  File? get Value => _$this._Value;
  set Value(File? Value) => _$this._Value = Value;

  ChangeProfileImageBuilder();

  ChangeProfileImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Value = $v.Value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeProfileImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeProfileImage;
  }

  @override
  void update(void Function(ChangeProfileImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeProfileImage build() => _build();

  _$ChangeProfileImage _build() {
    final _$result = _$v ?? new _$ChangeProfileImage._(Value: Value);
    replace(_$result);
    return _$result;
  }
}

class _$SwitchCheckBoxes extends SwitchCheckBoxes {
  @override
  final int? index;

  factory _$SwitchCheckBoxes(
          [void Function(SwitchCheckBoxesBuilder)? updates]) =>
      (new SwitchCheckBoxesBuilder()..update(updates))._build();

  _$SwitchCheckBoxes._({this.index}) : super._();

  @override
  SwitchCheckBoxes rebuild(void Function(SwitchCheckBoxesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SwitchCheckBoxesBuilder toBuilder() =>
      new SwitchCheckBoxesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwitchCheckBoxes && index == other.index;
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
    return (newBuiltValueToStringHelper(r'SwitchCheckBoxes')
          ..add('index', index))
        .toString();
  }
}

class SwitchCheckBoxesBuilder
    implements Builder<SwitchCheckBoxes, SwitchCheckBoxesBuilder> {
  _$SwitchCheckBoxes? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  SwitchCheckBoxesBuilder();

  SwitchCheckBoxesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwitchCheckBoxes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SwitchCheckBoxes;
  }

  @override
  void update(void Function(SwitchCheckBoxesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SwitchCheckBoxes build() => _build();

  _$SwitchCheckBoxes _build() {
    final _$result = _$v ?? new _$SwitchCheckBoxes._(index: index);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
