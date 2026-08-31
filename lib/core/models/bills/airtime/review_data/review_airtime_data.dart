import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_airtime_data.freezed.dart';

@freezed
abstract class ReviewAirtimeData with _$ReviewAirtimeData {
  const factory ReviewAirtimeData({
    required String phone,
    required double amount,
    required BillProvider provider,
  }) = _ReviewAirtimeData;
}
