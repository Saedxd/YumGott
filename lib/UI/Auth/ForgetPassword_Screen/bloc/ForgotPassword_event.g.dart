// GENERATED CODE - DO NOT MODIFY BY HAND

part of ForgotPassword_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestPassReset extends RequestPassReset {
  @override
  final String? Email;

  factory _$RequestPassReset(
          [void Function(RequestPassResetBuilder)? updates]) =>
      (new RequestPassResetBuilder()..update(updates))._build();

  _$RequestPassReset._({this.Email}) : super._();

  @override
  RequestPassReset rebuild(void Function(RequestPassResetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestPassResetBuilder toBuilder() =>
      new RequestPassResetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestPassReset && Email == other.Email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestPassReset')
          ..add('Email', Email))
        .toString();
  }
}

class RequestPassResetBuilder
    implements Builder<RequestPassReset, RequestPassResetBuilder> {
  _$RequestPassReset? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  RequestPassResetBuilder();

  RequestPassResetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestPassReset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestPassReset;
  }

  @override
  void update(void Function(RequestPassResetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestPassReset build() => _build();

  _$RequestPassReset _build() {
    final _$result = _$v ?? new _$RequestPassReset._(Email: Email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
