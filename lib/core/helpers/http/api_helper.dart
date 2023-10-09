import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/helpers/http/endpoints.dart';
import 'package:blue_business/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'api_response.dart';
import 'base_dio.dart';

class ApiHelpers {
  ApiHelpers._();

  static final Dio _dio = BaseDio.getExistingDio;

  static logPrettyJSONString(jsonObject) {
    var encoder = const JsonEncoder.withIndent("  ");
    String data = encoder.convert(jsonObject);
    log(data);
  }

  static Future makeGetRequest(
    String url, {
    bool requiresToken = true,
  }) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
    };
    if (requiresToken) {
      headers["Authorization"] =
          "${AppConstants.tokenType} ${AppConstants.accessToken}";
    }
    var resp = {};

    try {
      log("Sending GET request to $url");
      http.Response response = await http
          .get(
            uri,
            headers: headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));

      log("Status code: ${response.statusCode}\nBody: ${response.body}");
      // log(jsonDecode(response.body)['message']);
      if (response.body.isNotEmpty) {
        if (jsonDecode(response.body)['data'] is String) {
          resp = apiResponse(
              message: jsonDecode(response.body)['data'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: {});
        } else {
          resp = apiResponse(
              message: jsonDecode(response.body)['message'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: jsonDecode(response.body)['data']);
        }
      }
      if (resp["message"].toString().toLowerCase().contains("token expired")) {
        await Timeout.refreshToken();
        await Timeout.logout("You have been logged out due to inactivity");
      }
    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    }
    return resp;
  }

  static Future makePostRequest(String url, Map payload,
      {bool requiresToken = true}) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
    };
    if (requiresToken) {
      headers["Authorization"] =
          "${AppConstants.tokenType} ${AppConstants.accessToken}";
    }
    var resp = {};
    try {
      log("Sending POST request with $payload to $url");
      http.Response response = await http
          .post(
            uri,
            body: payload,
            headers: url == Endpoints.register ? {} : headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));

      log("Status code: ${response.statusCode}\nBody: ${response.body}");
      if (response.body.isNotEmpty) {
        if (jsonDecode(response.body)['data'] is String) {
          resp = apiResponse(
              message: jsonDecode(response.body)['data'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: {});
        } else {
          resp = apiResponse(
              message: jsonDecode(response.body)['message'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: jsonDecode(response.body)['data']);
        }
      }
      if (resp["message"].toString().toLowerCase().contains("token expired")) {
        await Timeout.refreshToken();
        await Timeout.logout("You have been logged out due to inactivity");
      }
    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    }

    return resp;
  }

  static Future makePatchRequest(String url, Map payload,
      {bool requiresToken = true}) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
    };
    if (requiresToken) {
      headers["Authorization"] =
          "${AppConstants.tokenType} ${AppConstants.accessToken}";
    }
    var resp = {};

    try {
      log("Sending PATCH request with $payload to $url");
      http.Response response = await http
          .patch(
            uri,
            body: payload,
            headers: headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));

      // log("Status code: ${response.statusCode}\nBody: ${response.body}");
      if (response.body.isNotEmpty) {
        if (jsonDecode(response.body)['data'] is String) {
          resp = apiResponse(
              message: jsonDecode(response.body)['data'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: {});
        } else {
          resp = apiResponse(
              message: jsonDecode(response.body)['message'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: jsonDecode(response.body)['data']);
        }
      }
      if (resp["message"].toString().toLowerCase().contains("token expired")) {
        await Timeout.refreshToken();
        await Timeout.logout("You have been logged out due to inactivity");
      }
    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    }
    return resp;
  }

  static Future makeDeleteRequest(String url,
      {Map payload = const {}, bool requiresToken = true}) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
    };
    if (requiresToken) {
      headers["Authorization"] =
          "${AppConstants.tokenType} ${AppConstants.accessToken}";
    }
    var resp = {};
    try {
      // log("Sending DELETE request with $payload to $url");
      http.Response response = await http
          .delete(
            uri,
            body: payload,
            headers: url == Endpoints.register ? {} : headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));

      // log("Status code: ${response.statusCode}\nBody: ${response.body}");
      if (response.body.isNotEmpty) {
        if (jsonDecode(response.body)['data'] is String) {
          resp = apiResponse(
              message: jsonDecode(response.body)['data'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: {});
        } else {
          resp = apiResponse(
              message: jsonDecode(response.body)['message'],
              status: jsonDecode(response.body)['status'] == 'success',
              data: jsonDecode(response.body)['data']);
        }
      } else {
        if (response.statusCode >= 200 && response.statusCode < 300) {
          resp = apiResponse(
              status: true, message: "Deleted Successfully", data: {});
        }
      }
      if (resp["message"].toString().toLowerCase().contains("token expired")) {
        await Timeout.refreshToken();
        await Timeout.logout("You have been logged out due to inactivity");
      }
    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    }

    return resp;
  }

  static Future makeMulipartRequest(String url, Map<String, dynamic> data,
      {bool requiresToken = true}) async {
    var resp = {};

    FormData formData = FormData.fromMap(data);

    // log("Sending dio PATCH request with data to $url");

    try {
      Response response = await _dio
          .patch(url, data: formData)
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));

      // log("Status code: ${response.statusCode}}, Message: ${response.statusMessage}");
      if (response.statusCode == 200) {
        resp = apiResponse(
          status: true,
          message: "Successful",
        );
      } else {
        resp = apiResponse(
          status: false,
          message: response.statusMessage,
        );
      }
      if (resp["message"].toString().toLowerCase().contains("token expired")) {
        await Timeout.refreshToken();
        await Timeout.logout("You have been logged out due to inactivity");
      }
    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    } catch (e) {
      DioException error = e as DioException;
      var data = error.response!.data;
      // log(data.toString());
      resp = apiResponse(status: false, message: data['message'], data: {});
    }

    return resp;
  }
}
