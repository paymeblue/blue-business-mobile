import 'package:blue_business/core/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_option.freezed.dart';

@freezed
abstract class PaymentOption with _$PaymentOption {
  factory PaymentOption({
    required Widget icon,
    required String title,
    required String subtitle,
    required PaymentMode mode,
  }) = _PaymentOption;
}
