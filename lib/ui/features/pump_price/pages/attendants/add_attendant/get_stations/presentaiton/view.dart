import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/textfield/textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'view_model.dart';

class GetPumpPriceStationsView extends StatelessWidget {
  const GetPumpPriceStationsView({super.key, required this.onSelected});

  final ValueChanged<FillingStation> onSelected;

  @override
  Widget build(BuildContext context) {
    return BaseView<GetPumpPriceStationsViewModel>(
        model: GetPumpPriceStationsViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Container(
            width: context.getWidth(),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: AppColors.pumpPricewhite,
            ),
            child: Column(
              children: [
                PumpPriceTextField.plaintext(
                  hint: 'Start typing',
                  onChanged: model.onSearchChanged,
                  controller: model.search,
                ),
                10.verticalGap,
                Expanded(
                    child: PagedListView<int, FillingStation>.separated(
                  pagingController: model.stationController,
                  builderDelegate: PagedChildBuilderDelegate(
                    firstPageProgressIndicatorBuilder: (ctx) => Center(
                      child: CircularProgressIndicator(
                        color: AppColors.pumpPricebodyText,
                        strokeWidth: 1.2,
                      ),
                    ),
                    itemBuilder: (context, item, index) =>
                        stationItem(context, item).onTap(() {
                      onSelected(item);
                    }),
                  ),
                  separatorBuilder: (context, index) => 16.verticalGap,
                )
                    // child: model.pageState == FetchState.loading
                    //     ? Center(
                    //         child: CircularProgressIndicator(
                    //           color: AppColors.pumpPricebodyText,
                    //           strokeWidth: 1.2,
                    //         ),
                    //       )
                    //     : ListView.separated(
                    //         padding: EdgeInsets.symmetric(
                    //             horizontal: 16.w, vertical: 12.h),
                    //         itemBuilder: (ctxt, i) => ,
                    //         separatorBuilder: (ctxt, i) => 16.verticalGap,
                    //         itemCount: model.stations.length,
                    //       )
                    )
              ],
            ),
          );
        });
  }

  Container stationItem(BuildContext context, FillingStation item) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name,
            style: context.textTheme.bodyLarge,
          ),
          2.verticalGap,
          Text(
            item.address,
            style: context.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
