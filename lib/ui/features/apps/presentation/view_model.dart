import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/models/settings_option/section_option.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';

class AppsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  List<SectionOption> options() {
    return [
      SectionOption(
        icon: SizedBox(
          height: 40,
          width: 40,
          child: AppAssets.images.pumpPrice.svg.pumpPrice.svg(),
        ),
        title: "Pump Price",
        subtitle: "Manage your filling stations conveniently",
        onTap: () {
          goToPumpPrice();
        },
      ),
    ];
  }

  goToPumpPrice() {
    locator<AppRouter>().push(PumpPriceShellRoute());
  }
}
