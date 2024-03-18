import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class StaffHomeView extends StatefulWidget {
  const StaffHomeView({super.key});

  @override
  State<StaffHomeView> createState() => _StaffHomeViewState();
}

class _StaffHomeViewState extends State<StaffHomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<StaffHomeViewModel>(
        model: StaffHomeViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(),
            body: Container(
              height: MediaQuery.sizeOf(context).height,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...titleAndSubtitle(),
                  12.verticalGap,
                  Expanded(child: emptyPage()),
                ],
              ),
            ),
          );
        });
  }

  staffList() {}

  Widget emptyPage() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppAssets.images.icons.emptyStaff.image(
            height: 88,
            width: 128,
          ),
          SizedBox(
            width: 179,
            child: Text(
              "You have not added any staff yet",
              style: AppTextStyles.subHeader,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Add Staff",
        style: AppTextStyles.header,
      ),
      4.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Grant access to your staff to make sales on BlueBusiness. ",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
