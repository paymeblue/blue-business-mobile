import 'dart:developer';

import 'package:blue_business/core/api/pump_price_service/pump_price_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/places/places_response.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/pages/branch/add_branch/get_locations/presentaiton/view.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';

class AddPumpPriceBranchViewModel extends BaseViewModel {
  init(BuildContext context) {}

  showLocationsBottomSheet(BuildContext context) async {
    FocusManager.instance.primaryFocus?.unfocus();
    await showModalBottomSheet(
      context: context,
      barrierColor: AppColors.pumpPriceblack.withOpacityValue(.65),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (ctx) {
        return GetPumpPriceLocationsView(
          onSelected: (value) {
            Navigator.of(ctx).pop();
            address = value;
          },
        );
      },
    );
  }

  PlaceResult? _address;
  PlaceResult? get address => _address;
  set address(PlaceResult? v) {
    _address = v;
    notifyListeners();
  }

  TimeOfDay? _openingTime;
  TimeOfDay? get openingTime => _openingTime;
  set openingTime(TimeOfDay? t) {
    _openingTime = t;
    notifyListeners();
  }

  TimeOfDay? _closingTime;
  TimeOfDay? get closingTime => _closingTime;
  set closingTime(TimeOfDay? t) {
    _closingTime = t;
    notifyListeners();
  }

  FetchState _buttonState = FetchState.idle;
  FetchState get buttonState => _buttonState;
  set buttonState(FetchState s) {
    _buttonState = s;
    notifyListeners();
  }

  Future<TimeOfDay?> selectTime(BuildContext context,
      [TimeOfDay? initialTime]) async {
    final t = await showTimePicker(
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
    );

    return t;
  }

  TextEditingController name = TextEditingController();
  TextEditingController price = TextEditingController();

  addBranch() async {
    final closing =
        '${closingTime!.hour.toString().padLeft(2, '0')}:${closingTime!.minute.toString().padLeft(2, '0')}';
    final opening =
        '${openingTime!.hour.toString().padLeft(2, '0')}:${openingTime!.minute.toString().padLeft(2, '0')}';
    buttonState = FetchState.loading;

    CreatePumpPriceBranchRequest request = CreatePumpPriceBranchRequest(
      name: name.text.trim(),
      businessId: locator<AppStateValues>().currentUser!.id,
      address: address?.formattedAddress ?? '',
      fuelPrice: double.parse(price.text.replaceAll(RegExp(r'[^\d.]'), "")),
      latitude: address?.geometry.location.lat ?? 0,
      longitude: address?.geometry.location.lng ?? 0,
      opening: opening,
      closing: closing,
    );

    final resp =
        await PumpPriceService().createBranch(request: request).onError((e, s) {
      log(s.toString());
      return CreatePumpPriceBranchResponse(
        message: AppErrorHandler.getErrorMessage(e),
      );
    });

    if (resp.status == 'success') {
      buttonState = FetchState.success;
      locator<AppRouter>().maybePop(true);
    } else {
      buttonState = FetchState.error;
      PumpPriceToast.error(message: resp.message);
    }
  }

  bool isActive() {
    return price.text.isNotEmpty &&
        name.text.isNotEmpty &&
        address != null &&
        openingTime != null &&
        closingTime != null;
  }

  onChanged(String? v) {
    notifyListeners();
  }
}
