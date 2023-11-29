import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/models/beneficiary.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/payment_method/pages/view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class PayViaBlue extends StatefulWidget {
  const PayViaBlue({super.key});

  @override
  State<PayViaBlue> createState() => _PayViaBlueState();
}

class _PayViaBlueState extends State<PayViaBlue> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentMethodPagesViewModel>(
        model: PaymentMethodPagesViewModel(),
        onModelReady: (model) => model.blueInit(context),
        builder: (context, payment, _) {
          return SingleChildScrollView(
              child: Container(
                  height: payment.size.height - 120,
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 52, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Recipient details",
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Make payment quickly and easier with your Blue account.",
                        style: AppTextStyles.subHeader,
                      ),
                      const SizedBox(height: 45),
                      const TextFieldHeader(title: "Wallet ID/Phone number"),
                      CustomTextField(
                        controller: payment.walletIdController,
                        hintText: "Wallet ID/Phone number",
                        onChanged: payment.onWalletIdChanged,
                        onSaved: payment.onWalletIdSaved,
                      ),
                      const SizedBox(height: 8),
                      if (payment.recentBeneficiaries.isNotEmpty)
                        Text(
                          "RECENTLY PAID",
                          style: AppTextStyles.subText.copyWith(fontSize: 13),
                        ),
                      if (payment.recentBeneficiaries.isNotEmpty)
                        const SizedBox(height: 10),
                      if (payment.recentBeneficiaries.isNotEmpty)
                        Container(
                          height: 125,
                          width: payment.size.width,
                          padding: const EdgeInsets.symmetric(
                              vertical: 9, horizontal: 16),
                          decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, i) {
                                return RecentWalletWidget(
                                    onTap: () {
                                      Provider.of<PaymentStateManager>(context,
                                                  listen: false)
                                              .recipient =
                                          payment.recentBeneficiaries[i];
                                      payment.walletIdController.text = payment
                                          .recentBeneficiaries[i].identifier;
                                      payment.paymentStateManager.walletId =
                                          payment.recentBeneficiaries[i]
                                              .identifier;
                                      payment.paymentStateManager
                                              .recipientName =
                                          "${payment.recentBeneficiaries[i].firstName} ${payment.recentBeneficiaries[i].lastName}";
                                    },
                                    wallet: payment.recentBeneficiaries[i]);
                              },
                              separatorBuilder: (context, i) {
                                return const SizedBox(
                                  width: 10,
                                );
                              },
                              itemCount: payment.recentBeneficiaries.length),
                        ),
                      const SizedBox(height: 34),
                      Text(
                        "ALL BENEFICIARIES",
                        style: AppTextStyles.subText.copyWith(fontSize: 13),
                      ),
                      const SizedBox(height: 5),
                      SearchTextField(
                        hintText: "Search Beneficiaries",
                        onChanged: payment.onSearchBeneficiariesChanged,
                        onSaved: payment.onSearchBeneficiariesSaved,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                          child: PagedListView.separated(
                              pagingController: payment.bluePagingController,
                              builderDelegate:
                                  PagedChildBuilderDelegate<Beneficiary>(
                                firstPageProgressIndicatorBuilder: (context) =>
                                    const SizedBox(),
                                noItemsFoundIndicatorBuilder: (context) {
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 52,
                                            width: 52,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.bgGrey),
                                            child: SvgPicture.asset(
                                              AppAssets.beneficiariesIcon,
                                              width: 18,
                                              height: 21,
                                            )),
                                        const SizedBox(height: 10),
                                        Text(
                                          "No Blue beneficiaries yet",
                                          style: AppTextStyles.subHeader
                                              .copyWith(
                                                  fontSize: 18,
                                                  color: AppColors.textcolor),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                itemBuilder: (context, item, i) {
                                  return BeneficiaryWidget(
                                    onTap: () {
                                      Provider.of<PaymentStateManager>(context,
                                                  listen: false)
                                              .recipient =
                                          payment.recentBeneficiaries[i];
                                      payment.walletIdController.text = payment
                                          .recentBeneficiaries[i].identifier;
                                      payment.paymentStateManager.walletId =
                                          payment.recentBeneficiaries[i]
                                              .identifier;
                                      payment.paymentStateManager
                                              .recipientName =
                                          "${payment.recentBeneficiaries[i].firstName} ${payment.recentBeneficiaries[i].lastName}";
                                    },
                                    wallet: payment.allBeneficiaries[i],
                                  );
                                },
                              ),
                              separatorBuilder: (context, i) {
                                return const SizedBox(height: 10);
                              })),
                      Consumer<PaymentStateManager>(builder: (context, pay, _) {
                        if (pay.walletId.isNotEmpty) {
                          return Center(
                              child: AppButton(
                                  onTap: () {
                                    // payment.initiateTransaction(context);
                                    payment.verifyReceiver(context);
                                  },
                                  buttonText: "Continue"));
                        }
                        return const SizedBox();
                      })
                    ],
                  )));
        });
  }
}

class BeneficiaryWidget extends StatelessWidget {
  final Beneficiary wallet;
  final VoidCallback onTap;
  const BeneficiaryWidget(
      {super.key, required this.wallet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72,
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
            color: AppColors.grey, borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColors.bgGrey, shape: BoxShape.circle),
              child: Image.asset(AppAssets.blueBgLogo, height: 20, width: 18),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${wallet.firstName} ${wallet.lastName}",
                    style: AppTextStyles.subHeader
                        .copyWith(color: AppColors.textcolor),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    wallet.identifier.toUpperCase(),
                    style: AppTextStyles.subText
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentWalletWidget extends StatelessWidget {
  final Beneficiary wallet;
  final VoidCallback onTap;
  const RecentWalletWidget({
    super.key,
    required this.wallet,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(),
        width: 100,
        child: Column(
          children: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColors.bgGrey, shape: BoxShape.circle),
              child: Image.asset(AppAssets.blueBgLogo, height: 20, width: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "${wallet.firstName} ${wallet.lastName}",
              style:
                  AppTextStyles.subHeader.copyWith(color: AppColors.textcolor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Text(
              wallet.identifier,
              style: AppTextStyles.subText
                  .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
