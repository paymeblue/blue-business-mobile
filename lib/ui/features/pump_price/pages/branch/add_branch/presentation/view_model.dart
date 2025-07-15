import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/pages/branch/add_branch/get_locations/presentaiton/view.dart';

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
            address = value.formattedAddress;
          },
        );
      },
    );
  }

  String _address = '';
  String get address => _address;
  set address(String v) {
    _address = v;
    notifyListeners();
  }
}
