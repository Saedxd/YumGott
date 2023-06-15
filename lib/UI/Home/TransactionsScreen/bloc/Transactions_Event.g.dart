// GENERATED CODE - DO NOT MODIFY BY HAND

part of Transactions_Event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransactions extends GetTransactions {
  factory _$GetTransactions([void Function(GetTransactionsBuilder)? updates]) =>
      (new GetTransactionsBuilder()..update(updates))._build();

  _$GetTransactions._() : super._();

  @override
  GetTransactions rebuild(void Function(GetTransactionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransactionsBuilder toBuilder() =>
      new GetTransactionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransactions;
  }

  @override
  int get hashCode {
    return 481549154;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetTransactions').toString();
  }
}

class GetTransactionsBuilder
    implements Builder<GetTransactions, GetTransactionsBuilder> {
  _$GetTransactions? _$v;

  GetTransactionsBuilder();

  @override
  void replace(GetTransactions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransactions;
  }

  @override
  void update(void Function(GetTransactionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransactions build() => _build();

  _$GetTransactions _build() {
    final _$result = _$v ?? new _$GetTransactions._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
