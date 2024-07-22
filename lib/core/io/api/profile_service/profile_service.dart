import 'dart:io';

import 'package:blue_business/core/models/notification/get/response/get_notification_response.dart';
import 'package:blue_business/core/models/notification/toggle/response/toggle_notification_response.dart';
import 'package:blue_business/core/models/upload_avatar/response/upload_avatar_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_service.g.dart';

@RestApi()
abstract class ProfileService {
  factory ProfileService(Dio dio) =>
      _ProfileService(dio, baseUrl: AppConstants.baseUrl);

  @POST("/users/upload_image")
  @MultiPart()
  Future<UploadAvatarResponse> uploadDisplayPicture(
      @Part(name: "display_picture", contentType: "image/png") File displayPic);

  @GET("/notifications")
  Future<GetNotificationResponse> getNotificationStatus();

  @GET("/notifications/toggle")
  Future<ToggleNotificationResponse> toggleNotificationStatus({
    @Query("status") required int status,
  });
}
