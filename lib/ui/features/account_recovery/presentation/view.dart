import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/account_recovery/widgets/account_recovery_section_container.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'view_model.dart';
import 'package:flutter/material.dart';

class AccountRecoveryView extends StatefulWidget {
  final String? type;
  const AccountRecoveryView({super.key, this.type});

  @override
  State<AccountRecoveryView> createState() => _AccountRecoveryViewState();
}

class _AccountRecoveryViewState extends State<AccountRecoveryView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AccountRecoveryViewModel>(
      model: AccountRecoveryViewModel(),
      onModelReady: (model) => model.init(context, widget.type),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 15),
              itemBuilder: (ctx, i) {
                return AccountRecoverySectionContainer(
                  section: model.sections(context)[i],
                );
              },
              itemCount: model.sections(context).length,
              separatorBuilder: (ctx, i) => 20.verticalGap,
            ),
          ),
        );
      },
    );
  }
}
