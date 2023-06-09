import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:youdeyiwu_app/constants/app_constant.dart';
import 'package:youdeyiwu_app/exception/custom_exception.dart';
import 'package:youdeyiwu_app/model/response/data_response.dart';
import 'package:youdeyiwu_app/service/global/global_service.dart';

/// ApiClient
class ApiClient extends http.BaseClient {
  final baseUri = Uri.parse(dotenv.get(AppConstant.appApiServer));
  final http.Client _inner = http.Client();
  final contentTypeName = "content-type";
  final contentTypeValue = "application/json";
  final authorization = "authorization";

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    var token = GlobalService.storageService.getTokenVo()?.token;
    if (token != null) {
      request.headers.putIfAbsent(authorization, () => "Bearer $token");
    }

    return _inner.send(request).then((response) async {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return response;
      } else {
        var str = await response.stream.bytesToString();
        var body = jsonDecode(str) as Map<String, dynamic>;
        var dataResponse = DataResponse.fromJson(body);
        if (dataResponse.code == 4010 || dataResponse.code == 4011) {
          GlobalService.storageService.removeTokenVo();
        }
        throw CustomException.withDataResponse(dataResponse);
      }
    });
  }

  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) {
    return super.get(baseUri.resolveUri(url), headers: headers);
  }

  @override
  Future<http.Response> post(Uri url,
      {Map<String, String>? headers, dynamic body, Encoding? encoding}) {
    var newHeaders = (headers ?? {})..[contentTypeName] ??= contentTypeValue;
    var newBody =
        (newHeaders[contentTypeName] == contentTypeValue && body != null)
            ? json.encode(body.toJson())
            : body;
    return super.post(baseUri.resolveUri(url),
        headers: newHeaders, body: newBody, encoding: encoding);
  }

  @override
  Future<http.Response> put(Uri url,
      {Map<String, String>? headers, dynamic body, Encoding? encoding}) {
    var newHeaders = (headers ?? {})..[contentTypeName] ??= contentTypeValue;
    var newBody =
        (newHeaders[contentTypeName] == contentTypeValue && body != null)
            ? json.encode(body.toJson())
            : body;
    return super.put(baseUri.resolveUri(url),
        headers: newHeaders, body: newBody, encoding: encoding);
  }

  @override
  Future<http.Response> patch(Uri url,
      {Map<String, String>? headers, dynamic body, Encoding? encoding}) {
    var newHeaders = (headers ?? {})..[contentTypeName] ??= contentTypeValue;
    var newBody =
        (newHeaders[contentTypeName] == contentTypeValue && body != null)
            ? json.encode(body.toJson())
            : body;
    return super.patch(baseUri.resolveUri(url),
        headers: newHeaders, body: newBody, encoding: encoding);
  }

  @override
  Future<http.Response> delete(Uri url,
      {Map<String, String>? headers, dynamic body, Encoding? encoding}) {
    var newHeaders = (headers ?? {})..[contentTypeName] ??= contentTypeValue;
    var newBody =
        (newHeaders[contentTypeName] == contentTypeValue && body != null)
            ? json.encode(body.toJson())
            : body;
    return super.delete(baseUri.resolveUri(url),
        headers: newHeaders, body: newBody, encoding: encoding);
  }

  @override
  void close() {
    _inner.close();
  }
}
