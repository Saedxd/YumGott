// GENERATED CODE - DO NOT MODIFY BY HAND

part of Wallet_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WalletState extends WalletState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;

  factory _$WalletState([void Function(WalletStateBuilder)? updates]) =>
      (new WalletStateBuilder()..update(updates))._build();

  _$WalletState._({this.error, this.isLoading, this.success}) : super._();

  @override
  WalletState rebuild(void Function(WalletStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WalletStateBuilder toBuilder() => new WalletStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WalletState &&
        error == other.error &&
        isLoading == other.isLoading &&
        success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WalletState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success))
        .toString();
  }
}

class WalletStateBuilder implements Builder<WalletState, WalletStateBuilder> {
  _$WalletState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  WalletStateBuilder();

  WalletStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _isLoading = $v.isLoading;
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WalletState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WalletState;
  }

  @override
  void update(void Function(WalletStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WalletState build() => _build();

  _$WalletState _build() {
    final _$result = _$v ??
        new _$WalletState._(
            error: error, isLoading: isLoading, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
