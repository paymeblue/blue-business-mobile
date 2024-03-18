import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/start_conversation/presentation/view_model.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class StartConversationView extends StatefulWidget {
  const StartConversationView({super.key});

  @override
  State<StartConversationView> createState() => _StartConversationState();
}

class _StartConversationState extends State<StartConversationView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<StartConversationViewModel>(
        model: StartConversationViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: () {
                model.goBack(context);
              },
              icon: Icons.arrow_back_ios_new,
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: model.size.height,
              width: model.size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlueTextField.search(
                    onSearchChanged: model.onSearchContactsChanged,
                  ),
                  newContactButton(model),
                  12.verticalGap,
                  Text(
                    "BLUE CONTACTS",
                    style: AppTextStyles.subText
                        .copyWith(color: AppColors.bodyTextColor),
                  ),
                  6.verticalGap,
                  Expanded(child: contactsListSection(model)),
                ],
              ),
            ),
          );
        });
  }

  Widget newContactButton(StartConversationViewModel model) {
    return GestureDetector(
      onTap: () {
        BlueBottomSheet.contact(
          model.identifierController,
          onConfirm: () {
            model.getPeer(context);
          },
        );
      },
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            Container(
              height: 40,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: AppColors.midGrey,
                shape: BoxShape.circle,
              ),
              child: AppAssets.images.icons.newMessage.svg(
                height: 20,
                width: 20,
              ),
            ),
            12.horizontalGap,
            Text(
              "New contact",
              style: AppTextStyles.subText.copyWith(color: AppColors.primary),
            )
          ],
        ),
      ),
    );
  }

  Widget contactsListSection(StartConversationViewModel model) {
    if (model.loadingContacts) {
      return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BlueLoadingTile.withImage(),
        itemCount: 4,
        separatorBuilder: (context, index) => 20.verticalGap,
      );
    } else if (model.contacts.isEmpty) {
      return NoItems.firstPage("You do not have any contacts yet.");
    } else {
      return Container(
        width: model.size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListView.separated(
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
      );
    }
  }

  Widget textColumn(StartConversationViewModel model, int i) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${model.contacts[i].prefix == null ? "" : "${model.contacts[i].prefix} "}${model.contacts[i].givenName ?? ""} ${model.contacts[i].familyName ?? ""}",
          style: AppTextStyles.header.copyWith(
            fontSize: 16.5,
          ),
        ),
      ],
    );
  }

  Widget popupButton(StartConversationViewModel model, Contact contact) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: AppColors.textColor,
      ),
      padding: EdgeInsets.zero,
      offset: const Offset(0, 25),
      itemBuilder: (context) => model
          .popupItems(contact, context)
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
            if (e.icon != null) e.icon!,
            const SizedBox(
              width: 8,
            ),
            Text(
              e.title,
              style: AppTextStyles.header.copyWith(
                fontSize: 15.5,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container initialsWidget(StartConversationViewModel model, int i) {
    return Container(
        height: 38,
        width: 38,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.brightBlue,
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(6),
        child: FittedBox(
          child: Text(
            model.contacts[i].initials(),
            style: AppTextStyles.header.copyWith(
              color: AppColors.white,
            ),
          ),
        ));
  }
}
