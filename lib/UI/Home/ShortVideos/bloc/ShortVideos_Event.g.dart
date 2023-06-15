// GENERATED CODE - DO NOT MODIFY BY HAND

part of ShortVideos_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LikeVideo extends LikeVideo {
  @override
  final String? important_id;
  @override
  final String? received_user_ID;
  @override
  final String? MyUsername;

  factory _$LikeVideo([void Function(LikeVideoBuilder)? updates]) =>
      (new LikeVideoBuilder()..update(updates))._build();

  _$LikeVideo._({this.important_id, this.received_user_ID, this.MyUsername})
      : super._();

  @override
  LikeVideo rebuild(void Function(LikeVideoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikeVideoBuilder toBuilder() => new LikeVideoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikeVideo &&
        important_id == other.important_id &&
        received_user_ID == other.received_user_ID &&
        MyUsername == other.MyUsername;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, important_id.hashCode);
    _$hash = $jc(_$hash, received_user_ID.hashCode);
    _$hash = $jc(_$hash, MyUsername.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LikeVideo')
          ..add('important_id', important_id)
          ..add('received_user_ID', received_user_ID)
          ..add('MyUsername', MyUsername))
        .toString();
  }
}

class LikeVideoBuilder implements Builder<LikeVideo, LikeVideoBuilder> {
  _$LikeVideo? _$v;

  String? _important_id;
  String? get important_id => _$this._important_id;
  set important_id(String? important_id) => _$this._important_id = important_id;

  String? _received_user_ID;
  String? get received_user_ID => _$this._received_user_ID;
  set received_user_ID(String? received_user_ID) =>
      _$this._received_user_ID = received_user_ID;

  String? _MyUsername;
  String? get MyUsername => _$this._MyUsername;
  set MyUsername(String? MyUsername) => _$this._MyUsername = MyUsername;

  LikeVideoBuilder();

  LikeVideoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _important_id = $v.important_id;
      _received_user_ID = $v.received_user_ID;
      _MyUsername = $v.MyUsername;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LikeVideo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LikeVideo;
  }

  @override
  void update(void Function(LikeVideoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LikeVideo build() => _build();

  _$LikeVideo _build() {
    final _$result = _$v ??
        new _$LikeVideo._(
            important_id: important_id,
            received_user_ID: received_user_ID,
            MyUsername: MyUsername);
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

class _$AddComment extends AddComment {
  @override
  final String? comment;
  @override
  final String? post;
  @override
  final String? product;
  @override
  final String? user;

  factory _$AddComment([void Function(AddCommentBuilder)? updates]) =>
      (new AddCommentBuilder()..update(updates))._build();

  _$AddComment._({this.comment, this.post, this.product, this.user})
      : super._();

  @override
  AddComment rebuild(void Function(AddCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddCommentBuilder toBuilder() => new AddCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddComment &&
        comment == other.comment &&
        post == other.post &&
        product == other.product &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, post.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddComment')
          ..add('comment', comment)
          ..add('post', post)
          ..add('product', product)
          ..add('user', user))
        .toString();
  }
}

class AddCommentBuilder implements Builder<AddComment, AddCommentBuilder> {
  _$AddComment? _$v;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _post;
  String? get post => _$this._post;
  set post(String? post) => _$this._post = post;

  String? _product;
  String? get product => _$this._product;
  set product(String? product) => _$this._product = product;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  AddCommentBuilder();

  AddCommentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _post = $v.post;
      _product = $v.product;
      _user = $v.user;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddComment;
  }

  @override
  void update(void Function(AddCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddComment build() => _build();

  _$AddComment _build() {
    final _$result = _$v ??
        new _$AddComment._(
            comment: comment, post: post, product: product, user: user);
    replace(_$result);
    return _$result;
  }
}

class _$GetComments extends GetComments {
  @override
  final String? Vidoe_ID;

  factory _$GetComments([void Function(GetCommentsBuilder)? updates]) =>
      (new GetCommentsBuilder()..update(updates))._build();

  _$GetComments._({this.Vidoe_ID}) : super._();

  @override
  GetComments rebuild(void Function(GetCommentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCommentsBuilder toBuilder() => new GetCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComments && Vidoe_ID == other.Vidoe_ID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Vidoe_ID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetComments')
          ..add('Vidoe_ID', Vidoe_ID))
        .toString();
  }
}

class GetCommentsBuilder implements Builder<GetComments, GetCommentsBuilder> {
  _$GetComments? _$v;

  String? _Vidoe_ID;
  String? get Vidoe_ID => _$this._Vidoe_ID;
  set Vidoe_ID(String? Vidoe_ID) => _$this._Vidoe_ID = Vidoe_ID;

  GetCommentsBuilder();

  GetCommentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Vidoe_ID = $v.Vidoe_ID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComments;
  }

  @override
  void update(void Function(GetCommentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComments build() => _build();

  _$GetComments _build() {
    final _$result = _$v ?? new _$GetComments._(Vidoe_ID: Vidoe_ID);
    replace(_$result);
    return _$result;
  }
}

class _$LikeComment extends LikeComment {
  factory _$LikeComment([void Function(LikeCommentBuilder)? updates]) =>
      (new LikeCommentBuilder()..update(updates))._build();

  _$LikeComment._() : super._();

  @override
  LikeComment rebuild(void Function(LikeCommentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LikeCommentBuilder toBuilder() => new LikeCommentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LikeComment;
  }

  @override
  int get hashCode {
    return 1064470773;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'LikeComment').toString();
  }
}

class LikeCommentBuilder implements Builder<LikeComment, LikeCommentBuilder> {
  _$LikeComment? _$v;

  LikeCommentBuilder();

  @override
  void replace(LikeComment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LikeComment;
  }

  @override
  void update(void Function(LikeCommentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LikeComment build() => _build();

  _$LikeComment _build() {
    final _$result = _$v ?? new _$LikeComment._();
    replace(_$result);
    return _$result;
  }
}

class _$SaveVideo extends SaveVideo {
  @override
  final String? Vidoe_ID;

  factory _$SaveVideo([void Function(SaveVideoBuilder)? updates]) =>
      (new SaveVideoBuilder()..update(updates))._build();

  _$SaveVideo._({this.Vidoe_ID}) : super._();

  @override
  SaveVideo rebuild(void Function(SaveVideoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SaveVideoBuilder toBuilder() => new SaveVideoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SaveVideo && Vidoe_ID == other.Vidoe_ID;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Vidoe_ID.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SaveVideo')
          ..add('Vidoe_ID', Vidoe_ID))
        .toString();
  }
}

class SaveVideoBuilder implements Builder<SaveVideo, SaveVideoBuilder> {
  _$SaveVideo? _$v;

  String? _Vidoe_ID;
  String? get Vidoe_ID => _$this._Vidoe_ID;
  set Vidoe_ID(String? Vidoe_ID) => _$this._Vidoe_ID = Vidoe_ID;

  SaveVideoBuilder();

  SaveVideoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Vidoe_ID = $v.Vidoe_ID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SaveVideo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SaveVideo;
  }

  @override
  void update(void Function(SaveVideoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SaveVideo build() => _build();

  _$SaveVideo _build() {
    final _$result = _$v ?? new _$SaveVideo._(Vidoe_ID: Vidoe_ID);
    replace(_$result);
    return _$result;
  }
}

class _$ChangeKeyBaordStatus extends ChangeKeyBaordStatus {
  @override
  final bool? value;

  factory _$ChangeKeyBaordStatus(
          [void Function(ChangeKeyBaordStatusBuilder)? updates]) =>
      (new ChangeKeyBaordStatusBuilder()..update(updates))._build();

  _$ChangeKeyBaordStatus._({this.value}) : super._();

  @override
  ChangeKeyBaordStatus rebuild(
          void Function(ChangeKeyBaordStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeKeyBaordStatusBuilder toBuilder() =>
      new ChangeKeyBaordStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeKeyBaordStatus && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeKeyBaordStatus')
          ..add('value', value))
        .toString();
  }
}

class ChangeKeyBaordStatusBuilder
    implements Builder<ChangeKeyBaordStatus, ChangeKeyBaordStatusBuilder> {
  _$ChangeKeyBaordStatus? _$v;

  bool? _value;
  bool? get value => _$this._value;
  set value(bool? value) => _$this._value = value;

  ChangeKeyBaordStatusBuilder();

  ChangeKeyBaordStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeKeyBaordStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeKeyBaordStatus;
  }

  @override
  void update(void Function(ChangeKeyBaordStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeKeyBaordStatus build() => _build();

  _$ChangeKeyBaordStatus _build() {
    final _$result = _$v ?? new _$ChangeKeyBaordStatus._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
