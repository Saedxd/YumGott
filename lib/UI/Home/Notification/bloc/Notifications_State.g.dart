// GENERATED CODE - DO NOT MODIFY BY HAND

part of Notifications_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationsState extends NotificationsState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;
  @override
  final List<notification>? Notificationss;

  factory _$NotificationsState(
          [void Function(NotificationsStateBuilder)? updates]) =>
      (new NotificationsStateBuilder()..update(updates))._build();

  _$NotificationsState._(
      {this.error, this.isLoading, this.success, this.Notificationss})
      : super._();

  @override
  NotificationsState rebuild(
          void Function(NotificationsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsStateBuilder toBuilder() =>
      new NotificationsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success &&
        Notificationss == other.Notificationss;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, Notificationss.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success)
          ..add('Notificationss', Notificationss))
        .toString();
  }
}

class NotificationsStateBuilder
    implements Builder<NotificationsState, NotificationsStateBuilder> {
  _$NotificationsState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  List<notification>? _Notificationss;
  List<notification>? get Notificationss => _$this._Notificationss;
  set Notificationss(List<notification>? Notificationss) =>
      _$this._Notificationss = Notificationss;

  NotificationsStateBuilder();

  NotificationsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _Notificationss = $v.Notificationss;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsState;
  }

  @override
  void update(void Function(NotificationsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsState build() => _build();

  _$NotificationsState _build() {
    final _$result = _$v ??
        new _$NotificationsState._(
            error: error,
            isLoading: isLoading,
            success: success,
            Notificationss: Notificationss);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
