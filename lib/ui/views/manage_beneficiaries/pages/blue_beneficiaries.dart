import 'package:blue_business/core/managers/beneficiaries_state_manager.dart';
import 'package:blue_business/core/models/beneficiary.dart';
import 'package:blue_business/ui/views/manage_beneficiaries/view_model.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class BlueBeneficiariesPage extends StatefulWidget {
  final List<Beneficiary> beneficiaries;
  final PagingController pagingController;
  const BlueBeneficiariesPage({
    super.key,
    required this.beneficiaries,
    required this.pagingController,
  });

  @override
  State<BlueBeneficiariesPage> createState() => _BlueBeneficiariesPageState();
}

class _BlueBeneficiariesPageState extends State<BlueBeneficiariesPage> {
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
                      "No Blue beneficiaries yet",
                      style: AppTextStyles.subHeader
                          .copyWith(fontSize: 18, color: AppColors.textcolor),
                    )
                  ],
                ),
              );
            },
            noMoreItemsIndicatorBuilder: (context) {
              return SizedBox(
                height: size.height - (size.height / 2.5),
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
              if (i < beneficiary.blueBeneficiaries.length) {
                return BlueBeneficiaryTile(
                  size: size,
                  beneficiary: beneficiary.blueBeneficiaries[i],
                  onDelete: () {
                    payment.showDeleteBeneficiaryDialog(
                        beneficiary.blueBeneficiaries[i]);
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

class BlueBeneficiaryTile extends StatefulWidget {
  const BlueBeneficiaryTile(
      {super.key,
      required this.size,
      required this.beneficiary,
      required this.onDelete});

  final Size size;
  final Beneficiary beneficiary;
  final VoidCallback onDelete;

  @override
  State<BlueBeneficiaryTile> createState() => _BlueBeneficiaryTileState();
}

class _BlueBeneficiaryTileState extends State<BlueBeneficiaryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: widget.size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: AppColors.grey),
      child: Row(
        children: [
          Container(
            height: 38,
            width: 38,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.bgGrey),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppAssets.blueBgLogo,
                fit: BoxFit.scaleDown,
                height: 18,
                width: 18.4,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.beneficiary.firstName} ${widget.beneficiary.lastName}",
                  style: AppTextStyles.subHeader
                      .copyWith(color: AppColors.textcolor),
                ),
                Text(
                  widget.beneficiary.identifier.toUpperCase(),
                  style: AppTextStyles.subText
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                widget.onDelete();
                setState(() {});
              },
              icon:
                  SvgPicture.asset(AppAssets.deleteIcon, fit: BoxFit.scaleDown))
        ],
      ),
    );
  }
}
