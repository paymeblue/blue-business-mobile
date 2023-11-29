import 'package:blue_business/core/models/beneficiary.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BillsBeneficiariesPage extends StatefulWidget {
  final List<Beneficiary> beneficiaries;
  final PagingController pagingController;
  const BillsBeneficiariesPage(
      {super.key, required this.beneficiaries, required this.pagingController});

  @override
  State<BillsBeneficiariesPage> createState() => _BillsBeneficiariesPageState();
}

class _BillsBeneficiariesPageState extends State<BillsBeneficiariesPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // return PagedListView.separated(
    //     pagingController: widget.pagingController,
    //     builderDelegate: PagedChildBuilderDelegate<Beneficiary>(
    //       firstPageProgressIndicatorBuilder: (context) => const SizedBox(),
    //       noItemsFoundIndicatorBuilder: (context) {
    //         return SizedBox(
    //           width: MediaQuery.of(context).size.width,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Container(
    //                   height: 52,
    //                   width: 52,
    //                   decoration: BoxDecoration(
    //                       shape: BoxShape.circle, color: AppColors.bgGrey),
    //                   child: SvgPicture.asset(
    //                     AppAssets.beneficiariesIcon,
    //                     width: 18,
    //                     height: 21,
    //                   )),
    //               const SizedBox(height: 10),
    //               Text(
    //                 "No Beneficiaries yet",
    //                 style: AppTextStyles.subHeader
    //                     .copyWith(fontSize: 18, color: AppColors.textcolor),
    //               )
    //             ],
    //           ),
    //         );
    //       },
    //       noMoreItemsIndicatorBuilder: (context) {
    //           return SizedBox(
    //             width: MediaQuery.of(context).size.width,
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Container(
    //                     height: 52,
    //                     width: 52,
    //                     decoration: BoxDecoration(
    //                         shape: BoxShape.circle, color: AppColors.bgGrey),
    //                     child: SvgPicture.asset(
    //                       AppAssets.beneficiariesIcon,
    //                       width: 18,
    //                       height: 21,
    //                     )),
    //                 const SizedBox(height: 10),
    //                 Text(
    //                   "No Blue beneficiaries here",
    //                   style: AppTextStyles.subHeader
    //                       .copyWith(fontSize: 18, color: AppColors.textcolor),
    //                 )
    //               ],
    //             ),
    //           );
    //         },
    //       itemBuilder: (context, item, i) {
    //         return BillBeneficiaryTile(
    //           size: size,
    //           beneficiary: widget.beneficiaries[i],
    //         );
    //       },
    //     ),
    //     separatorBuilder: (context, i) {
    //       return const SizedBox(height: 10);
    //     });
    return Container(
      height: size.height,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 170,
            width: 170,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 44),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: AppColors.bgGrey),
            child: SvgPicture.asset(AppAssets.comingSoonIcon),
          ),
          const SizedBox(height: 35),
          Text(
            "Coming Soon",
            style: AppTextStyles.header,
          ),
          const SizedBox(height: 10),
          Text(
            "Easily pay for your airtime, internet, and electricity bills with Blue.",
            textAlign: TextAlign.center,
            style: AppTextStyles.subHeader.copyWith(
                color: AppColors.bodyTextcolor2, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class BillBeneficiaryTile extends StatelessWidget {
  const BillBeneficiaryTile(
      {super.key, required this.size, required this.beneficiary});

  final Size size;
  final Beneficiary beneficiary;

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
                  shape: BoxShape.circle, color: AppColors.bgGrey),
              child: const Padding(
                padding: EdgeInsets.all(8),
                // child: Image.asset(AppAssets.airtelLogo, fit: BoxFit.scaleDown),
              )),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Airtel - Data",
                  style: AppTextStyles.subHeader
                      .copyWith(color: AppColors.textcolor),
                ),
                Text(
                  "08053930590",
                  style: AppTextStyles.subText
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon:
                  SvgPicture.asset(AppAssets.deleteIcon, fit: BoxFit.scaleDown))
        ],
      ),
    );
  }
}
