import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/payment_option/payment_option.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitiatePaymentViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  bool isActive() {
    int? amountInKobo =
        int.tryParse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ""));
    return amountController.text.isNotEmpty &&
        amountInKobo != null &&
        amountInKobo >= 20000;
  }

  startTransaction(BuildContext context, bool isWithdrawal) {
    if (!isWithdrawal) {
      BlueBottomSheet.paymentMethod(amountController.text).then((value) {});
    } else {
      int? amountInKobo =
          int.tryParse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ""));

      context.go("${RoutePaths.confirmPaymentPath}/withdraw/0",
          extra: amountInKobo);
    }
  }

  String getModeString(PaymentMode value) {
    switch (value) {
      case PaymentMode.blue:
        return "blue-user";
      case PaymentMode.qr:
        return "qr";
      case PaymentMode.phone:
        return "phone";
      case PaymentMode.offline:
        return "offline";
    }
  }
}
