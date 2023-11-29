import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/payment_method/pages/view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/dial_code_text_field.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PayViaPhone extends StatefulWidget {
  const PayViaPhone({super.key});

  @override
  State<PayViaPhone> createState() => _PayViaPhoneState();
}

class _PayViaPhoneState extends State<PayViaPhone> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<PaymentMethodPagesViewModel>(
        model: PaymentMethodPagesViewModel(),
        onModelReady: (model) async => await model.init(context),
        onDispose: (model) => model.dispose(),
        builder: (context, payment, _) {
          return Container(
              height: size.height - 70,
              padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter phone number",
                    style: AppTextStyles.header,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Enter the phone number of the recipent you want to send money to .",
                    style: AppTextStyles.subHeader,
                  ),
                  const SizedBox(height: 45),
                  const TextFieldHeader(title: "Phone number"),
                  PhoneNumberWithDialCodeTextField(
                    onChanged: payment.onPhoneChanged,
                    onSaved: payment.onPhoneSaved,
                    controller: payment.controller,
                  ),
                  const SizedBox(height: 8),
                  const TextFieldHeader(title: "Recipient name"),
                  CustomTextField(
                    hintText: "First name, Last name",
                    onChanged: payment.onRecipientNameChanged,
                    onSaved: payment.onRecipientNameSaved,
                    controller: payment.nameController,
                  ),
                  Text(
                    "MY CONTACTS",
                    style: AppTextStyles.subText.copyWith(fontSize: 13),
                  ),
                  const SizedBox(height: 10),
                  SearchTextField(
                    hintText: "Search contacts",
                    onChanged: payment.onSearchContactsChanged,
                    onSaved: payment.onSearchContactsSaved,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: payment.isLoading
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
                                            if (contact.phones!.length == 1) {
                                              payment.paymentStateManager
                                                  .contactIndex = i;
                                              payment.onSelectContact(contact);
                                            } else {
                                              payment
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
                  ),
                  Consumer<PaymentStateManager>(builder: (context, pay, _) {
                    if (pay.phone.isNotEmpty && pay.recipientName.isNotEmpty) {
                      return Center(
                          child: AppButton(
                              onTap: () {
                                payment.verifyReceiver(context);
                              },
                              buttonText: "Continue"));
                    }
                    return const SizedBox();
                  })
                ],
              ));
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
      for (var element in contact.phones!) {
        if (contact.phones!.indexOf(element) == contact.phones!.length - 1) {
          num += element.value ?? "";
        } else {
          num += "${element.value ?? ""}, ";
        }
      }
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
