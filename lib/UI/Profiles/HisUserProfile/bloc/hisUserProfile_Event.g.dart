// GENERATED CODE - DO NOT MODIFY BY HAND

part of hisUserProfile_Event;

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
  final int? User_ID;

  factory _$GetProfile([void Function(GetProfileBuilder)? updates]) =>
      (new GetProfileBuilder()..update(updates))._build();

  _$GetProfile._({this.User_ID}) : super._();

  @override
  GetProfile rebuild(void Function(GetProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProfileBuilder toBuilder() => new GetProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProfile && User_ID == other.User_ID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, User_ID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetProfile')..add('User_ID', User_ID))
        .toString();
  }
}

class GetProfileBuilder implements Builder<GetProfile, GetProfileBuilder> {
  _$GetProfile? _$v;

  int? _User_ID;
  int? get User_ID => _$this._User_ID;
  set User_ID(int? User_ID) => _$this._User_ID = User_ID;

  GetProfileBuilder();

  GetProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _User_ID = $v.User_ID;
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
    final _$result = _$v ?? new _$GetProfile._(User_ID: User_ID);
    replace(_$result);
    return _$result;
  }
}

class _$FollowUser extends FollowUser {
  @override
  final String? important_id;
  @override
  final String? received_user;
  @override
  final String? MyUsername;

  factory _$FollowUser([void Function(FollowUserBuilder)? updates]) =>
      (new FollowUserBuilder()..update(updates))._build();

  _$FollowUser._({this.important_id, this.received_user, this.MyUsername})
      : super._();

  @override
  FollowUser rebuild(void Function(FollowUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FollowUserBuilder toBuilder() => new FollowUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FollowUser &&
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
    return (newBuiltValueToStringHelper(r'FollowUser')
          ..add('important_id', important_id)
          ..add('received_user', received_user)
          ..add('MyUsername', MyUsername))
        .toString();
  }
}

class FollowUserBuilder implements Builder<FollowUser, FollowUserBuilder> {
  _$FollowUser? _$v;

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

  FollowUserBuilder();

  FollowUserBuilder get _$this {
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
  void replace(FollowUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FollowUser;
  }

  @override
  void update(void Function(FollowUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FollowUser build() => _build();

  _$FollowUser _build() {
    final _$result = _$v ??
        new _$FollowUser._(
            important_id: important_id,
            received_user: received_user,
            MyUsername: MyUsername);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
