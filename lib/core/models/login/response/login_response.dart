import 'package:blue_business/core/models/login/data/login_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @Default(false) bool success,
    String? message,
    LoginData? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseImpl.fromJson(json);
}



//{
//  "user":{
//    "id":8,
//    "first_name":"Priscilla ",
//    "middle_name":null,
//    "last_name":"Abhulimen ",
//    "phone":"2348161356342",
//    "display_pic":"https://blue-image-files.s3.amazonaws.com/faaef0f80534a632e06e855a806ce5e8976361a31d1260b68484272ce3e3230e",
//    "level":3,
//    "verified":1,
//    "kyc_status":0,
//    "notification_status":1,
//    "is_deleted":0,
//    "created_at":"2023-06-16T12:45:46.000Z",
//    "recovery_code":"P80D84DB7D0C0DF21170222077",
//    "wallet":{
//      "id":16,
//      "wallet_code":"1BAC4D6498",
//      "balance":"200.00",
//      "created_at":"2023-06-16T12:47:01.000Z"
//    },
//    "withdrawal_account":{
//      "id":1,
//      "account_number":"0038000688",
//      "account_name":"PRISCILLA  ONOKHOMEN  ABHULIMEN",
//      "bank_name":"STANBIC IBTC BANK PLC",
//      "bank_logo":null,
//      "created_at":"2023-07-30T20:26:37.000Z"
//    },
//    "account":{
//      "id":7,
//      "account_number":"7771242836",
//      "bank_name":"Wema Bank"
//     }
//    },
//    "token":{
//      "type":"Bearer",
//      "accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OCwicGhvbmUiOiIyMzQ4MTYxMzU2MzQyIiwiaWF0IjoxNzA1MzM3NjMxLCJleHAiOjE3MDUzMzc5MzF9.EEare0c9jQB1TtqGeAw8jl6it8V_72DqMYyESGnX6DM",
//      "expiresIn":"5m",
//      "refreshToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OCwicGhvbmUiOiIyMzQ4MTYxMzU2MzQyIiwiaWF0IjoxNzA1MzM3NjMxLCJleHAiOjE3MDU0MjQwMzF9.fO2NBpsg8hTiuHJ48c80yg-NCfXU2UamJA6fDOZOhFw",
//      "refreshTokenexpiresIn":"24h"
//     }
//   }
// }

//{
//  "user":{
//    "id":8,
//    "first_name":"Priscilla ",
//    "middle_name":null,
//    "last_name":"Abhulimen ",
//    "phone":"2348161356342",
//    "display_pic":"https://blue-image-files.s3.amazonaws.com/faaef0f80534a632e06e855a806ce5e8976361a31d1260b68484272ce3e3230e",
//    "notification_status":1,
//   },
//   "token":{
//      "type":"Bearer",
//      "accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OCwicGhvbmUiOiIyMzQ4MTYxMzU2MzQyIiwiaWF0IjoxNzA1MzM3NjMxLCJleHAiOjE3MDUzMzc5MzF9.EEare0c9jQB1TtqGeAw8jl6it8V_72DqMYyESGnX6DM",
//      "expiresIn":"5m",
//      "refreshToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OCwicGhvbmUiOiIyMzQ4MTYxMzU2MzQyIiwiaWF0IjoxNzA1MzM3NjMxLCJleHAiOjE3MDU0MjQwMzF9.fO2NBpsg8hTiuHJ48c80yg-NCfXU2UamJA6fDOZOhFw",
//      "refreshTokenexpiresIn":"24h"
//    }
// }