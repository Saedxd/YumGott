// GENERATED CODE - DO NOT MODIFY BY HAND

part of Notifications_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNotifications extends GetNotifications {
  factory _$GetNotifications(
          [void Function(GetNotificationsBuilder)? updates]) =>
      (new GetNotificationsBuilder()..update(updates))._build();

  _$GetNotifications._() : super._();

  @override
  GetNotifications rebuild(void Function(GetNotificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNotificationsBuilder toBuilder() =>
      new GetNotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNotifications;
  }

  @override
  int get hashCode {
    return 928826350;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetNotifications').toString();
  }
}

class GetNotificationsBuilder
    implements Builder<GetNotifications, GetNotificationsBuilder> {
  _$GetNotifications? _$v;

  GetNotificationsBuilder();

  @override
  void replace(GetNotifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNotifications;
  }

  @override
  void update(void Function(GetNotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNotifications build() => _build();

  _$GetNotifications _build() {
    final _$result = _$v ?? new _$GetNotifications._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
