// GENERATED CODE - DO NOT MODIFY BY HAND

part of RestaurantProfile_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeSelectedTab extends ChangeSelectedTab {
  @override
  final int? index;

  factory _$ChangeSelectedTab(
          [void Function(ChangeSelectedTabBuilder)? updates]) =>
      (new ChangeSelectedTabBuilder()..update(updates))._build();

  _$ChangeSelectedTab._({this.index}) : super._();

  @override
  ChangeSelectedTab rebuild(void Function(ChangeSelectedTabBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeSelectedTabBuilder toBuilder() =>
      new ChangeSelectedTabBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeSelectedTab && index == other.index;
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
    return (newBuiltValueToStringHelper(r'ChangeSelectedTab')
          ..add('index', index))
        .toString();
  }
}

class ChangeSelectedTabBuilder
    implements Builder<ChangeSelectedTab, ChangeSelectedTabBuilder> {
  _$ChangeSelectedTab? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  ChangeSelectedTabBuilder();

  ChangeSelectedTabBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeSelectedTab other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeSelectedTab;
  }

  @override
  void update(void Function(ChangeSelectedTabBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeSelectedTab build() => _build();

  _$ChangeSelectedTab _build() {
    final _$result = _$v ?? new _$ChangeSelectedTab._(index: index);
    replace(_$result);
    return _$result;
  }
}

class _$GetProfile extends GetProfile {
  @override
  final int? Restaurant_ID;

  factory _$GetProfile([void Function(GetProfileBuilder)? updates]) =>
      (new GetProfileBuilder()..update(updates))._build();

  _$GetProfile._({this.Restaurant_ID}) : super._();

  @override
  GetProfile rebuild(void Function(GetProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProfileBuilder toBuilder() => new GetProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProfile && Restaurant_ID == other.Restaurant_ID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Restaurant_ID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetProfile')
          ..add('Restaurant_ID', Restaurant_ID))
        .toString();
  }
}

class GetProfileBuilder implements Builder<GetProfile, GetProfileBuilder> {
  _$GetProfile? _$v;

  int? _Restaurant_ID;
  int? get Restaurant_ID => _$this._Restaurant_ID;
  set Restaurant_ID(int? Restaurant_ID) =>
      _$this._Restaurant_ID = Restaurant_ID;

  GetProfileBuilder();

  GetProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Restaurant_ID = $v.Restaurant_ID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProfile;
  }

  @override
  void update(void Function(GetProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetProfile build() => _build();

  _$GetProfile _build() {
    final _$result = _$v ?? new _$GetProfile._(Restaurant_ID: Restaurant_ID);
    replace(_$result);
    return _$result;
  }
}

class _$ShowMenuWidget extends ShowMenuWidget {
  factory _$ShowMenuWidget([void Function(ShowMenuWidgetBuilder)? updates]) =>
      (new ShowMenuWidgetBuilder()..update(updates))._build();

  _$ShowMenuWidget._() : super._();

  @override
  ShowMenuWidget rebuild(void Function(ShowMenuWidgetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowMenuWidgetBuilder toBuilder() =>
      new ShowMenuWidgetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowMenuWidget;
  }

  @override
  int get hashCode {
    return 136384970;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ShowMenuWidget').toString();
  }
}

class ShowMenuWidgetBuilder
    implements Builder<ShowMenuWidget, ShowMenuWidgetBuilder> {
  _$ShowMenuWidget? _$v;

  ShowMenuWidgetBuilder();

  @override
  void replace(ShowMenuWidget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowMenuWidget;
  }

  @override
  void update(void Function(ShowMenuWidgetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShowMenuWidget build() => _build();

  _$ShowMenuWidget _build() {
    final _$result = _$v ?? new _$ShowMenuWidget._();
    replace(_$result);
    return _$result;
  }
}

class _$FollowRestaurant extends FollowRestaurant {
  @override
  final String? important_id;
  @override
  final String? received_user;
  @override
  final String? MyUsername;

  factory _$FollowRestaurant(
          [void Function(FollowRestaurantBuilder)? updates]) =>
      (new FollowRestaurantBuilder()..update(updates))._build();

  _$FollowRestaurant._({this.important_id, this.received_user, this.MyUsername})
      : super._();

  @override
  FollowRestaurant rebuild(void Function(FollowRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FollowRestaurantBuilder toBuilder() =>
      new FollowRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FollowRestaurant &&
        important_id == other.important_id &&
        received_user == other.received_user &&
        MyUsername == other.MyUsername;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, important_id.hashCode);
    _$hash = $jc(_$hash, received_user.hashCode);
    _$hash = $jc(_$hash, MyUsername.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FollowRestaurant')
          ..add('important_id', important_id)
          ..add('received_user', received_user)
          ..add('MyUsername', MyUsername))
        .toString();
  }
}

class FollowRestaurantBuilder
    implements Builder<FollowRestaurant, FollowRestaurantBuilder> {
  _$FollowRestaurant? _$v;

  String? _important_id;
  String? get important_id => _$this._important_id;
  set important_id(String? important_id) => _$this._important_id = important_id;

  String? _received_user;
  String? get received_user => _$this._received_user;
  set received_user(String? received_user) =>
      _$this._received_user = received_user;

  String? _MyUsername;
  String? get MyUsername => _$this._MyUsername;
  set MyUsername(String? MyUsername) => _$this._MyUsername = MyUsername;

  FollowRestaurantBuilder();

  FollowRestaurantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _important_id = $v.important_id;
      _received_user = $v.received_user;
      _MyUsername = $v.MyUsername;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FollowRestaurant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FollowRestaurant;
  }

  @override
  void update(void Function(FollowRestaurantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FollowRestaurant build() => _build();

  _$FollowRestaurant _build() {
    final _$result = _$v ??
        new _$FollowRestaurant._(
            important_id: important_id,
            received_user: received_user,
            MyUsername: MyUsername);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
