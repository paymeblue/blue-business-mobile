import 'package:blue_business/core/managers/beneficiaries_state_manager.dart';
import 'package:blue_business/core/models/beneficiary.dart';
import 'package:blue_business/ui/views/manage_beneficiaries/view_model.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class PhoneBeneficiariesPage extends StatefulWidget {
  final List<Beneficiary> beneficiaries;
  final PagingController pagingController;
  const PhoneBeneficiariesPage(
      {super.key, required this.beneficiaries, required this.pagingController});

  @override
  State<PhoneBeneficiariesPage> createState() => _PhoneBeneficiariesPageState();
}

class _PhoneBeneficiariesPageState extends State<PhoneBeneficiariesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer2<ManageBeneficiariesViewModel, BeneficiariesStateManager>(
        builder: (context, payment, beneficiary, _) {
      return PagedListView.separated(
          pagingController: widget.pagingController,
          builderDelegate: PagedChildBuilderDelegate(
            firstPageProgressIndicatorBuilder: (context) => const SizedBox(),
            noItemsFoundIndicatorBuilder: (context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.bgGrey),
                        child: SvgPicture.asset(
                          AppAssets.beneficiariesIcon,
                          width: 18,
                          height: 21,
                        )),
                    const SizedBox(height: 10),
                    Text(
                      "No Phone number beneficiaries yet",
                      style: AppTextStyles.subHeader
                          .copyWith(fontSize: 18, color: AppColors.textcolor),
                    )
                  ],
                ),
              );
            },
            noMoreItemsIndicatorBuilder: (context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).size.height / 2.5),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.bgGrey),
                        child: SvgPicture.asset(
                          AppAssets.beneficiariesIcon,
                          width: 18,
                          height: 21,
                        )),
                    const SizedBox(height: 10),
                    Text(
                      "Nothing more to see here",
                      style: AppTextStyles.subHeader
                          .copyWith(fontSize: 18, color: AppColors.textcolor),
                    )
                  ],
                ),
              );
            },
            itemBuilder: (context, item, i) {
              if (i < beneficiary.phoneBeneficiaries.length) {
                return PhoneBeneficiaryTile(
                  size: size,
                  beneficiary: beneficiary.phoneBeneficiaries[i],
                  onDelete: () {
                    payment.showDeleteBeneficiaryDialog(
                        beneficiary.phoneBeneficiaries[i]);
                  },
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          separatorBuilder: (context, i) {
            return const SizedBox(height: 10);
          });
    });
  }
}

class PhoneBeneficiaryTile extends StatelessWidget {
  const PhoneBeneficiaryTile(
      {super.key,
      required this.size,
      required this.beneficiary,
      required this.onDelete});

  final Size size;
  final Beneficiary beneficiary;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: AppColors.grey),
      child: Row(
        children: [
          Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.success),
              alignment: Alignment.center,
              child: Text(
                beneficiary.getInitials(),
                style: AppTextStyles.subHeader.copyWith(color: AppColors.white),
              )),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${beneficiary.firstName} ${beneficiary.lastName}",
                  style: AppTextStyles.subHeader
                      .copyWith(color: AppColors.textcolor),
                ),
                Text(
                  beneficiary.identifier,
                  style: AppTextStyles.subText
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: onDelete,
              icon:
                  SvgPicture.asset(AppAssets.deleteIcon, fit: BoxFit.scaleDown))
        ],
      ),
    );
  }
}
