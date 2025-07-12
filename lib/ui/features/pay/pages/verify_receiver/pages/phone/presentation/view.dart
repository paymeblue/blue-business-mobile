import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/paging/no_items.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class PhonePaymentView extends StatelessWidget {
  final InitiateTransactionData data;
  const PhonePaymentView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<PhonePaymentViewModel>(
      model: PhonePaymentViewModel(),
      onModelReady: (model) => model.init(context, data),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              context.router.maybePop();
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ...titleAndSubtitle(),
                      35.verticalGap,
                      phoneTextField(model),
                      18.verticalGap,
                      BlueTextField.plaintext(
                        hint: "John Doe",
                        title: "Recipient name",
                        controller: model.recipientController,
                        onChanged: model.onChanged,
                      ),
                      28.verticalGap,
                      Text(
                        "MY CONTACTS",
                        style:
                            AppTextStyles.subHeader.copyWith(fontSize: 15.sp),
                      ),
                      BlueTextField.search(
                          onSearchChanged: model.onSearchContactsChanged,
                          hint: "Sesrch contacts"),
                      contactsListSection(model),
                    ],
                  ),
                ),
                4.verticalGap,
                AppButton.primary(
                    title: "Continue",
                    isEnabled: model.phoneController.text.isNotEmpty &&
                        model.recipientController.text.trimRight().isNotEmpty,
                    onTap: () {
                      model.verify(context);
                    })
              ],
            ),
          ),
        );
      },
    );
  }

  Widget contactsListSection(PhonePaymentViewModel model) {
    if (model.loadingContacts) {
      return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BlueLoadingTile.withImage(),
        itemCount: 4,
        separatorBuilder: (context, index) => 20.verticalGap,
      );
    } else if (model.contacts.isEmpty) {
      return NoItems.firstPage(
        "You do not have any contacts yet.",
        onRefresh: model.getAllContacts,
      );
    } else {
      return Container(
        width: model.size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: RefreshIndicator(
          onRefresh: model.getAllContacts,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, i) => SizedBox(
              height: 42,
              width: model.size.width,
              child: Row(
                children: [
                  initialsWidget(model, i),
                  10.horizontalGap,
                  Expanded(
                    child: textColumn(model, i),
                  ),
                  10.horizontalGap,
                  popupButton(model, model.contacts[i]),
                ],
              ),
            ),
            separatorBuilder: (context, i) => 20.verticalGap,
            itemCount: model.contacts.length,
          ),
        ),
      );
    }
  }

  Widget popupButton(PhonePaymentViewModel model, Contact contact) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: AppColors.textColor,
      ),
      padding: EdgeInsets.zero,
      offset: const Offset(0, 25),
      itemBuilder: (context) => model
          .popupItems(contact)
          .map<PopupMenuItem>(
            (e) => menuItem(e),
          )
          .toList(),
    );
  }

  PopupMenuItem<dynamic> menuItem(PopupModel e) {
    return PopupMenuItem(
      onTap: () {
        e.onTap();
      },
      child: SizedBox(
        height: 35,
        child: Row(
          children: [
            if (e.icon != null) ...[e.icon!, 8.horizontalGap],
            Text(
              e.title,
              style: AppTextStyles.header.copyWith(
                fontSize: 15.sp,
              ),
            )
          ],
        ),
      ),
    );
  }

  Column textColumn(PhonePaymentViewModel model, int i) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          model.contacts[i].displayName,
          style: AppTextStyles.header.copyWith(
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }

  Container initialsWidget(PhonePaymentViewModel model, int i) {
    return Container(
        height: 38.h,
        width: 38.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.brightBlue,
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(6),
        child: FittedBox(
          child: Text(
            model.contacts[i].displayName.initials,
            style: AppTextStyles.header.copyWith(
              color: AppColors.white,
            ),
          ),
        ));
  }

  Widget phoneTextField(PhonePaymentViewModel model) {
    return BlueTextField.phone(
      title: "Phone number",
      selectedItem: model.selectedCountry,
      onCountryChanged: (value) {
        if (value != null) model.selectedCountry = value;
      },
      onChanged: model.onChanged,
      searchController: model.searchController,
      controller: model.phoneController,
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Enter Recipient details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 330.w,
        child: Text(
          "Enter the wallet ID of the Blue user you want to send money to.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
