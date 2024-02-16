import 'dart:io';

import 'package:blue_business/core/models/notification/response/notification_response.dart';
import 'package:blue_business/core/models/upload_avatar/response/upload_avatar_response.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/retrofit.dart';

part 'settings_service.g.dart';

@RestApi(
    baseUrl: "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api")
abstract class SettingsService {
  factory SettingsService(Dio dio) = _SettingsService;

  @GET("/notifications")
  Future<NotificationResponse> toggleNotifications(@Query("status") int status);

  @PATCH("/users/upload_pics")
  @MultiPart()
  Future<UploadAvatarResponse> uploadDisplayPicture(
      @Part(name: "display_pic", contentType: "image/png") File displayPic);
}
