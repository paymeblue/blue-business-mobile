import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_option.freezed.dart';

@freezed
class PaymentOption with _$PaymentOption {
  factory PaymentOption({
    required Widget icon,
    required String title,
    required String subtitle,
    required PaymentMode mode,
  }) = _PaymentOption;
}

enum PaymentMode { blue, qr, phone, offline }
