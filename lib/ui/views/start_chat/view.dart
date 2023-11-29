import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class StartChatView extends StatefulWidget {
  const StartChatView({super.key});

  @override
  State<StartChatView> createState() => _StartChatViewState();

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.startChatPath,
        key: ValueKey(AppPages.startChatPath),
        child: const StartChatView());
  }
}

class _StartChatViewState extends State<StartChatView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<StartChatViewModel>(
        model: StartChatViewModel(),
        onModelReady: (model) => model.init(context),
        onDispose: (p0) {
          Timeout.dispose();
        },
        builder: (context, model, _) {
          return GestureDetector(
            onTap: () {
              Timeout.resetTimer();
            },
            onPanDown: (details) {
              Timeout.resetTimer();
            },
            child: Scaffold(
                appBar: BlueAppBar.show(
                    onBackTap: () => model.appStateManager.startChat = false,
                    leadingIcon: Icons.arrow_back_ios_new,
                    elevation: 0),
                body: Container(
                  height: size.height,
                  width: size.width,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SearchTextField(
                        hintText: "Search contacts",
                        onChanged: model.onSearchContactsChanged,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: model.showNewContactBottomSheet,
                        child: Container(
                          padding: const EdgeInsets.only(top: 10),
                          decoration: const BoxDecoration(),
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: AppColors.bgGrey,
                                    shape: BoxShape.circle),
                                child: SvgPicture.asset(
                                  AppAssets.newMessageIcon,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "New contact",
                                style: AppTextStyles.indicatorText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: size.width,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "CONTACTS",
                          style: AppTextStyles.subText.copyWith(fontSize: 13),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: model.isLoading
                            ? Center(
                                child: CircularProgressIndicator(
                                    color: AppColors.primaryColor))
                            : Consumer<PaymentStateManager>(
                                builder: (context, paymentStateManager, _) {
                                if (paymentStateManager.contacts.isNotEmpty) {
                                  return ListView.builder(
                                      itemCount:
                                          paymentStateManager.contacts.length,
                                      itemBuilder: (context, i) {
                                        Contact contact =
                                            paymentStateManager.contacts[i];
                                        if (contact.phones != null &&
                                            contact.phones!.isNotEmpty &&
                                            contact.phones![0].value != null) {
                                          return ContactTile(
                                            contact:
                                                paymentStateManager.contacts[i],
                                            onTap: () {
                                              if (contact.phones != null) {
                                                if (contact.phones!.length ==
                                                    1) {
                                                  model.paymentStateManager
                                                      .contactIndex = i;
                                                  model
                                                      .onSelectContact(contact);
                                                } else {
                                                  model
                                                      .showSelectNumberBottomSheet(
                                                          contact, i);
                                                }
                                              }
                                            },
                                          );
                                        } else {
                                          return const SizedBox();
                                        }
                                      });
                                } else {
                                  return Center(
                                      child: Text("No contacts found",
                                          style: AppTextStyles.header));
                                }
                              }),
                      )
                    ],
                  ),
                )),
          );
        });
  }
}

class ContactTile extends StatelessWidget {
  final Contact contact;
  final VoidCallback onTap;
  const ContactTile({super.key, required this.contact, required this.onTap});

  String getNumberString() {
    String num = "";
    if (contact.phones != null) {
      contact.phones?.forEach((element) {
        if (element.value != null) {
          if (element == contact.phones?.last) {
            num += element.value ?? "";
          } else {
            num += "${element.value}, ";
          }
        }
      });
    }
    return num;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<PaymentStateManager>(builder: (context, payment, _) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.width,
          padding: const EdgeInsets.only(left: 5, right: 5, bottom: 15),
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor, shape: BoxShape.circle),
                child: Text(
                  contact.initials(),
                  style:
                      AppTextStyles.subHeader.copyWith(color: AppColors.white),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contact.displayName ?? "",
                      style: AppTextStyles.subHeader
                          .copyWith(color: AppColors.textcolor),
                    ),
                    const SizedBox(height: 5),
                    if (contact.phones != null &&
                        contact.phones!.isNotEmpty &&
                        contact.phones![0].value != null)
                      Text(
                        getNumberString(),
                        style: AppTextStyles.subText
                            .copyWith(fontWeight: FontWeight.w400),
                      )
                  ],
                ),
              ),
              if (payment.contactIndex != null &&
                  payment.contacts[payment.contactIndex!] == contact)
                Icon(
                  Icons.check,
                  color: AppColors.primaryColor,
                )
            ],
          ),
        ),
      );
    });
  }
}
