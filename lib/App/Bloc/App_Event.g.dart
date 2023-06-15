// GENERATED CODE - DO NOT MODIFY BY HAND

part of App_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeTheme extends ChangeTheme {
  @override
  final m.ThemeData? theme;

  factory _$ChangeTheme([void Function(ChangeThemeBuilder)? updates]) =>
      (new ChangeThemeBuilder()..update(updates))._build();

  _$ChangeTheme._({this.theme}) : super._();

  @override
  ChangeTheme rebuild(void Function(ChangeThemeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeThemeBuilder toBuilder() => new ChangeThemeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeTheme && theme == other.theme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeTheme')..add('theme', theme))
        .toString();
  }
}

class ChangeThemeBuilder implements Builder<ChangeTheme, ChangeThemeBuilder> {
  _$ChangeTheme? _$v;

  m.ThemeData? _theme;
  m.ThemeData? get theme => _$this._theme;
  set theme(m.ThemeData? theme) => _$this._theme = theme;

  ChangeThemeBuilder();

  ChangeThemeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _theme = $v.theme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeTheme other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeTheme;
  }

  @override
  void update(void Function(ChangeThemeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeTheme build() => _build();

  _$ChangeTheme _build() {
    final _$result = _$v ?? new _$ChangeTheme._(theme: theme);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
