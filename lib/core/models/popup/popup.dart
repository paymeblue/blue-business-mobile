import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popup.freezed.dart';

@freezed
class PopupModel with _$PopupModel {
  const factory PopupModel({
    required String title,
    Widget? icon,
    required Function onTap,
  }) = _PopupModel;
}
