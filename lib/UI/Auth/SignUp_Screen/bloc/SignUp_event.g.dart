// GENERATED CODE - DO NOT MODIFY BY HAND

part of SignUp_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpWithGoogle extends SignUpWithGoogle {
  @override
  final String? Email;
  @override
  final String? Name;
  @override
  final String? image;

  factory _$SignUpWithGoogle(
          [void Function(SignUpWithGoogleBuilder)? updates]) =>
      (new SignUpWithGoogleBuilder()..update(updates))._build();

  _$SignUpWithGoogle._({this.Email, this.Name, this.image}) : super._();

  @override
  SignUpWithGoogle rebuild(void Function(SignUpWithGoogleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpWithGoogleBuilder toBuilder() =>
      new SignUpWithGoogleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpWithGoogle &&
        Email == other.Email &&
        Name == other.Name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, Name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpWithGoogle')
          ..add('Email', Email)
          ..add('Name', Name)
          ..add('image', image))
        .toString();
  }
}

class SignUpWithGoogleBuilder
    implements Builder<SignUpWithGoogle, SignUpWithGoogleBuilder> {
  _$SignUpWithGoogle? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _Name;
  String? get Name => _$this._Name;
  set Name(String? Name) => _$this._Name = Name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  SignUpWithGoogleBuilder();

  SignUpWithGoogleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _Name = $v.Name;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpWithGoogle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpWithGoogle;
  }

  @override
  void update(void Function(SignUpWithGoogleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpWithGoogle build() => _build();

  _$SignUpWithGoogle _build() {
    final _$result =
        _$v ?? new _$SignUpWithGoogle._(Email: Email, Name: Name, image: image);
    replace(_$result);
    return _$result;
  }
}

class _$SignUpWithFacebook extends SignUpWithFacebook {
  @override
  final String? AccessToken;

  factory _$SignUpWithFacebook(
          [void Function(SignUpWithFacebookBuilder)? updates]) =>
      (new SignUpWithFacebookBuilder()..update(updates))._build();

  _$SignUpWithFacebook._({this.AccessToken}) : super._();

  @override
  SignUpWithFacebook rebuild(
          void Function(SignUpWithFacebookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpWithFacebookBuilder toBuilder() =>
      new SignUpWithFacebookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpWithFacebook && AccessToken == other.AccessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, AccessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpWithFacebook')
          ..add('AccessToken', AccessToken))
        .toString();
  }
}

class SignUpWithFacebookBuilder
    implements Builder<SignUpWithFacebook, SignUpWithFacebookBuilder> {
  _$SignUpWithFacebook? _$v;

  String? _AccessToken;
  String? get AccessToken => _$this._AccessToken;
  set AccessToken(String? AccessToken) => _$this._AccessToken = AccessToken;

  SignUpWithFacebookBuilder();

  SignUpWithFacebookBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _AccessToken = $v.AccessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpWithFacebook other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpWithFacebook;
  }

  @override
  void update(void Function(SignUpWithFacebookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpWithFacebook build() => _build();

  _$SignUpWithFacebook _build() {
    final _$result =
        _$v ?? new _$SignUpWithFacebook._(AccessToken: AccessToken);
    replace(_$result);
    return _$result;
  }
}

class _$PostSignUp extends PostSignUp {
  @override
  final String? Email;
  @override
  final String? password;
  @override
  final String? username;
  @override
  final String? PhoneNUmber;
  @override
  final File? Image;

  factory _$PostSignUp([void Function(PostSignUpBuilder)? updates]) =>
      (new PostSignUpBuilder()..update(updates))._build();

  _$PostSignUp._(
      {this.Email, this.password, this.username, this.PhoneNUmber, this.Image})
      : super._();

  @override
  PostSignUp rebuild(void Function(PostSignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostSignUpBuilder toBuilder() => new PostSignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostSignUp &&
        Email == other.Email &&
        password == other.password &&
        username == other.username &&
        PhoneNUmber == other.PhoneNUmber &&
        Image == other.Image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, Email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, PhoneNUmber.hashCode);
    _$hash = $jc(_$hash, Image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostSignUp')
          ..add('Email', Email)
          ..add('password', password)
          ..add('username', username)
          ..add('PhoneNUmber', PhoneNUmber)
          ..add('Image', Image))
        .toString();
  }
}

class PostSignUpBuilder implements Builder<PostSignUp, PostSignUpBuilder> {
  _$PostSignUp? _$v;

  String? _Email;
  String? get Email => _$this._Email;
  set Email(String? Email) => _$this._Email = Email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _PhoneNUmber;
  String? get PhoneNUmber => _$this._PhoneNUmber;
  set PhoneNUmber(String? PhoneNUmber) => _$this._PhoneNUmber = PhoneNUmber;

  File? _Image;
  File? get Image => _$this._Image;
  set Image(File? Image) => _$this._Image = Image;

  PostSignUpBuilder();

  PostSignUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _Email = $v.Email;
      _password = $v.password;
      _username = $v.username;
      _PhoneNUmber = $v.PhoneNUmber;
      _Image = $v.Image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostSignUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostSignUp;
  }

  @override
  void update(void Function(PostSignUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostSignUp build() => _build();

  _$PostSignUp _build() {
    final _$result = _$v ??
        new _$PostSignUp._(
            Email: Email,
            password: password,
            username: username,
            PhoneNUmber: PhoneNUmber,
            Image: Image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
