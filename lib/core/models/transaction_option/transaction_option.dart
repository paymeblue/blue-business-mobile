import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_option.freezed.dart';

@freezed
class TransactionOption with _$TransactionOption {
  const factory TransactionOption({
    required Widget icon,
    required String title,
    required VoidCallback onTap,
  }) = _TransactionOption;
}
