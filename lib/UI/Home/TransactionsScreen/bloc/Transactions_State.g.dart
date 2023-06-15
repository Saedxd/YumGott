// GENERATED CODE - DO NOT MODIFY BY HAND

part of Transactions_State;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionState extends TransactionState {
  @override
  final String? error;
  @override
  final bool? isLoading;
  @override
  final bool? success;

  factory _$TransactionState(
          [void Function(TransactionStateBuilder)? updates]) =>
      (new TransactionStateBuilder()..update(updates))._build();

  _$TransactionState._({this.error, this.isLoading, this.success}) : super._();

  @override
  TransactionState rebuild(void Function(TransactionStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionStateBuilder toBuilder() =>
      new TransactionStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionState &&
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
    return (newBuiltValueToStringHelper(r'TransactionState')
          ..add('error', error)
          ..add('isLoading', isLoading)
          ..add('success', success))
        .toString();
  }
}

class TransactionStateBuilder
    implements Builder<TransactionState, TransactionStateBuilder> {
  _$TransactionState? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  TransactionStateBuilder();

  TransactionStateBuilder get _$this {
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
  void replace(TransactionState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionState;
  }

  @override
  void update(void Function(TransactionStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionState build() => _build();

  _$TransactionState _build() {
    final _$result = _$v ??
        new _$TransactionState._(
            error: error, isLoading: isLoading, success: success);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
