import 'package:blue_business/core/api/branch_service/branch_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/branches/create/data/create_branch_request.dart';
import 'package:blue_business/core/models/branches/create/response/create_branch_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:shimmer/shimmer.dart';

class EnterBranchDetailsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, Branch? branch) {
    size = context.mediaQuery.size;

    if (branch != null) {
      setInitialValues(branch);
    }
  }

  ScreenshotController screenshotController = ScreenshotController();

  setInitialValues(Branch branch) {
    nameController.text = branch.name;
    locationController.text = branch.location;
    staffSize = branch.staffSize;
  }

  bool isActiveWithBranch(Branch branch) {
    return branch.name != nameController.text ||
        branch.staffSize != staffSize ||
        locationController.text != branch.location;
  }

  bool isActive() {
    return nameController.text.trimRight().isNotEmpty &&
        staffSize != null &&
        locationController.text.trimRight().isNotEmpty;
  }

  goBack(BuildContext context, [bool refresh = false]) {
    context.pop(refresh);
  }

  List<String> sizes = ["1 - 9", "10 - 49", "50 - 249", "> 250"];

  String? _staffSize;
  String? get staffSize => _staffSize;
  set staffSize(String? s) {
    _staffSize = s;
    notifyListeners();
  }

  TextEditingController locationController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  createBranch(BuildContext context) async {
    // AppLoader.start();

    // CreateBranchRequest request = CreateBranchRequest(
    //     name: nameController.text,
    //     staffSize: staffSize!,
    //     location: locationController.text);

    // CreateBranchResponse response =
    //     await BranchService().createBranch(request: request).onError(
    //           (error, stackTrace) => CreateBranchResponse(
    //               message: AppErrorHandler.getErrorMessage(
    //             error,
    //             {
    //               "request_name": "create_branch",
    //               "request": request.toString(),
    //               "response_model": "CreateBranchResponse"
    //             },
    //           )),
    //         );

    // if (response.status == "success") {
    // } else {
    //   AppNotification.error(message: response.message);
    // }
    // AppLoader.stop();

    showQRDialog(
        context,
        const Branch(
          id: 2,
          name: 'Kubwa',
          location: 'Abuja',
        ));
  }

  showQRDialog(BuildContext context, Branch branch) {
    Shimmer qrImage() {
      return Shimmer.fromColors(
        loop: 2,
        direction: ShimmerDirection.ltr,
        period: const Duration(milliseconds: 500),
        baseColor: AppColors.blue,
        highlightColor: AppColors.paleBlue,
        child: QrImageView(
            data:
                '${locator<AppStateValues>().wallet!.walletCode}__${branch.id}',
            dataModuleStyle: const QrDataModuleStyle(
              color: AppColors.primary,
            ),
            eyeStyle: const QrEyeStyle(
              color: AppColors.primary,
              eyeShape: QrEyeShape.square,
            ),
            size: 120),
      );
    }

    Shimmer qrLoadingShimmer() {
      return Shimmer.fromColors(
        baseColor: AppColors.brightBlue.withOpacityValue(.35),
        highlightColor: AppColors.white,
        child: Container(
          height: 140,
          width: 140,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      );
    }

    Widget qrImageContainer() {
      return Stack(
        children: [
          Container(
            height: 165.dm,
            width: 165.dm,
            decoration: const BoxDecoration(
              color: AppColors.bgGrey,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.only(bottom: 25.h),
            alignment: Alignment.bottomCenter,
            child: Screenshot(
              controller: screenshotController,
              child: Container(
                height: 108.dm,
                width: 108.dm,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(17),
                ),
                padding: EdgeInsets.all(8.dm),
                child: locator<AppStateValues>().wallet == null
                    ? qrLoadingShimmer()
                    : qrImage(),
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 64.w,
            height: 35.dm,
            width: 35.dm,
            child: Container(
              height: 35.dm,
              width: 35.dm,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                height: 45.h,
                width: 45.w,
                child: BlueAvatar(
                  radius: 30,
                  imageUrl:
                      locator<AppStateValues>().currentUser!.displayPicture,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          child: Container(
            height: 470.h,
            width: context.getWidth(),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 25.h, bottom: 12.h, left: 16.w, right: 16.w),
                  child: Column(
                    children: [
                      Text(
                        "${branch.name.sentenceCase} Branch",
                        style: AppTextStyles.header,
                      ),
                      8.verticalGap,
                      SizedBox(
                        width: 280.w,
                        child: Text(
                          'Users can send money to a specific branch using their bar code, by a scan!',
                          style: AppTextStyles.subHeader.copyWith(height: 1),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      10.verticalGap,
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.stroke,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Column(
                            children: [
                              qrImageContainer(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10.w,
                  top: 12.h,
                  child: GestureDetector(
                    onTap: () {
                      ctx.pop();
                      if (context.mounted) goBack(context, true);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      height: 34.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFFE5E6E8)),
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 19,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  editBranch(BuildContext context, Branch branch) async {
    AppLoader.start();

    CreateBranchRequest request = CreateBranchRequest(
        name: nameController.text,
        staffSize: staffSize!,
        location: locationController.text);

    CreateBranchResponse response = await BranchService()
        .editBranch(request: request, id: branch.id)
        .onError(
          (error, stackTrace) => CreateBranchResponse(
              message: AppErrorHandler.getErrorMessage(
            error,
            {
              "request_name": "edit_branch",
              "request": request.toString(),
              "response_model": "CreateResponse"
            },
          )),
        );

    if (response.status == "success") {
      if (context.mounted) goBack(context, true);
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }
}
