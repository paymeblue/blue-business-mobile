import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import '../../../utils/constants.dart';
import 'package:path/path.dart' as path;
import 'api_response.dart';

class ApiHelpers {
  ApiHelpers._();

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
      "Content-Type": "application/json",
    };
    if (requiresToken) {
      headers["Authorization"] = "Bearer ${AppConstants.token}";
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

      if (response.body.isNotEmpty) {
        log("Body: ${logPrettyJSONString(jsonDecode(response.body))}");
      }
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (response.body.isEmpty) {
          resp = apiResponse(status: true, message: "", data: {});
        } else {
          var body = jsonDecode(utf8.decode(response.bodyBytes));
          if (body is List) {
            resp =
                apiResponse(status: true, message: "", data: {"result": body});
          } else {
            resp =
                apiResponse(status: true, message: body["message"], data: body);
          }
        }
      } else {
        var body = jsonDecode(response.body);
        resp = apiResponse(status: false, message: body["message"], data: body);
      }
    } on SocketException {
      resp = apiResponse(
        status: false,
        message: "No Internet Connection",
        data: {},
      );
    } on FormatException {
      resp = apiResponse(
        status: false,
        message: "Invalid Response Format.",
        data: {},
      );
    } on TimeoutException {
      resp = apiResponse(
          status: false,
          message: "Connection Timed out. Please try again later.",
          data: {});
    } on Exception {
      resp = apiResponse(
          status: false,
          message: "Something went wrong. Please try again later.",
          data: {});
    } catch (e) {
      resp = apiResponse(status: false, message: e.toString(), data: {});
    }
    return resp;
  }

  static Future makeDeleteRequest(
    String url, {
    payload,
    bool requiresToken = true,
  }) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
      "Content-Type": "application/json",
    };
    if (requiresToken) {
      headers["Authorization"] = "Bearer ${AppConstants.token}";
    }

    var resp = {};
    try {
      log("Sending DELETE request $payload to $url");
      http.Response response = await http
          .delete(
            uri,
            body: jsonEncode(payload),
            headers: headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));
      if (response.body.isNotEmpty) {
        log("Body: ${logPrettyJSONString(jsonDecode(response.body))}");
      }
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (response.body.isEmpty) {
          resp = apiResponse(status: true, message: "", data: {});
        } else {
          var body = jsonDecode(utf8.decode(response.bodyBytes));
          if (body is List) {
            resp =
                apiResponse(status: true, message: "", data: {"result": body});
          } else {
            resp =
                apiResponse(status: true, message: body["message"], data: body);
          }
        }
      } else {
        var body = jsonDecode(response.body);
        resp = apiResponse(status: false, message: body["message"], data: body);
      }
    } on SocketException {
      resp = apiResponse(
        status: false,
        message: "No Internet Connection",
        data: {},
      );
    } on FormatException {
      resp = apiResponse(
        status: false,
        message: "Invalid Response Format.",
        data: {},
      );
    } on TimeoutException {
      resp = apiResponse(
          status: false,
          message: "Connection Timed out. Please try again later.",
          data: {});
    } on Exception {
      resp = apiResponse(
          status: false,
          message: "Something went wrong. Please try again later.",
          data: {});
    } catch (e) {
      resp = apiResponse(status: false, message: e.toString(), data: {});
    }
    return resp;
  }

  static Future makePostRequest(
    String url,
    payload, {
    bool requiresToken = true,
  }) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
      "Content-Type": "application/json",
    };
    if (requiresToken) {
      headers["Authorization"] = "Bearer ${AppConstants.token}";
    }

    var resp = {};
    try {
      log("Sending POST request $payload to $url");
      http.Response response = await http
          .post(
            uri,
            body: jsonEncode(payload),
            headers: headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));
      log("Body: ${response.body}");
      if (response.body.isNotEmpty) {
        log("Body: ${logPrettyJSONString(jsonDecode(response.body))}");
      }
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (response.body.isEmpty) {
          resp = apiResponse(status: true, message: "", data: {});
        } else {
          var body = jsonDecode(utf8.decode(response.bodyBytes));
          if (body is List) {
            resp =
                apiResponse(status: true, message: "", data: {"result": body});
          } else {
            resp =
                apiResponse(status: true, message: body["message"], data: body);
          }
        }
      } else {
        var body = jsonDecode(response.body);
        resp = apiResponse(status: false, message: body["message"], data: body);
      }
    } on SocketException {
      resp = apiResponse(
        status: false,
        message: "No Internet Connection",
        data: {},
      );
    } on FormatException {
      resp = apiResponse(
        status: false,
        message: "Invalid Response Format.",
        data: {},
      );
    } on TimeoutException {
      resp = apiResponse(
          status: false,
          message: "Connection Timed out. Please try again later.",
          data: {});
    } on Exception {
      resp = apiResponse(
          status: false,
          message: "Something went wrong. Please try again later.",
          data: {});
    } catch (e) {
      resp = apiResponse(status: false, message: e.toString(), data: {});
    }

    return resp;
  }

  static Future makePutRequest(
    String url,
    payload, {
    bool requiresToken = true,
  }) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
      "Content-Type": "application/json",
    };
    if (requiresToken) {
      headers["Authorization"] = "Bearer ${AppConstants.token}";
    }

    var resp = {};
    try {
      log("Sending PUT request $payload to $url");
      http.Response response = await http
          .put(
            uri,
            body: jsonEncode(payload),
            headers: headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));
      log("Body: ${response.body}");
      if (response.body.isNotEmpty) {
        log("Body: ${logPrettyJSONString(jsonDecode(response.body))}");
      }
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (response.body.isEmpty) {
          resp = apiResponse(status: true, message: "", data: {});
        } else {
          var body = jsonDecode(utf8.decode(response.bodyBytes));
          if (body is List) {
            resp =
                apiResponse(status: true, message: "", data: {"result": body});
          } else {
            resp =
                apiResponse(status: true, message: body["message"], data: body);
          }
        }
      } else {
        var body = jsonDecode(response.body);
        resp = apiResponse(status: false, message: body["message"], data: body);
      }
    } on SocketException {
      resp = apiResponse(
        status: false,
        message: "No Internet Connection",
        data: {},
      );
    } on FormatException {
      resp = apiResponse(
        status: false,
        message: "Invalid Response Format.",
        data: {},
      );
    } on TimeoutException {
      resp = apiResponse(
          status: false,
          message: "Connection Timed out. Please try again later.",
          data: {});
    } on Exception {
      resp = apiResponse(
          status: false,
          message: "Something went wrong. Please try again later.",
          data: {});
    } catch (e) {
      resp = apiResponse(status: false, message: e.toString(), data: {});
    }

    return resp;
  }

  static Future makePatchRequest(
    String url,
    payload, {
    bool requiresToken = true,
  }) async {
    var uri = Uri.parse(url);
    Map<String, String> headers = {
      "accept": "*/*",
      "Content-Type": "application/json",
    };
    if (requiresToken) {
      headers["Authorization"] = "Bearer ${AppConstants.token}";
    }

    var resp = {};

    try {
      log("Sending PATCH request $payload to $url");
      http.Response response = await http
          .patch(
            uri,
            body: jsonEncode(payload),
            headers: headers,
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));
      if (response.body.isNotEmpty) {
        log("Body: ${logPrettyJSONString(jsonDecode(response.body))}");
      }
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (response.body.isEmpty) {
          resp = apiResponse(status: true, message: "", data: {});
        } else {
          var body = jsonDecode(utf8.decode(response.bodyBytes));
          resp =
              apiResponse(status: true, message: body["message"], data: body);
        }
      } else {
        var body = jsonDecode(response.body);
        resp = apiResponse(status: false, message: body["message"], data: body);
      }
    } on SocketException {
      resp = apiResponse(
        status: false,
        message: "No Internet Connection",
        data: {},
      );
    } on FormatException {
      resp = apiResponse(
        status: false,
        message: "Invalid Response Format.",
        data: {},
      );
    } on TimeoutException {
      resp = apiResponse(
          status: false,
          message: "Connection Timed out. Please try again later.",
          data: {});
    } on Exception {
      resp = apiResponse(
          status: false,
          message: "Something went wrong. Please try again later.",
          data: {});
    } catch (e) {
      resp = apiResponse(status: false, message: e.toString(), data: {});
    }
    return resp;
  }

  static Future makeMultipartRequest(String url, String method,
      {String imagePath = "",
      bool requiresToken = true,
      Map? requestBody}) async {
    var resp = {};
    var request = http.MultipartRequest(method, Uri.parse(url));

    try {
      request.headers.addEntries([
        const MapEntry("Accept", "*/*"),
        requestBody != null
            ? const MapEntry("Content-type", "application/json")
            : const MapEntry("Content-type", "multipart/form-data"),
        MapEntry("Authorization", "Bearer ${AppConstants.token}"),
      ]);
      if (imagePath.isNotEmpty) {
        request.files.add(await http.MultipartFile.fromPath('file', imagePath,
            contentType: MediaType(
                "image", path.extension(imagePath).replaceAll(".", ""))));
      }
      if (requestBody != null) {
        request.fields['inspireDetail'] = jsonEncode(requestBody);
      }

      log("Sending $method request to $url with Body: ${request.fields} and Headers: ${request.headers}");

      http.StreamedResponse response = await request.send();

      String body = await response.stream.bytesToString();

      log("Body: ${logPrettyJSONString(jsonDecode(body))}");
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (body.isEmpty) {
          resp = apiResponse(status: true, message: "", data: {});
        } else {
          var jsonBody = jsonDecode(body);
          resp = apiResponse(
              status: true, message: jsonBody["message"], data: jsonBody);
        }
      } else {
        var jsonBody = jsonDecode(body);
        resp = apiResponse(
            status: false, message: jsonBody["message"], data: jsonBody);
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
}
