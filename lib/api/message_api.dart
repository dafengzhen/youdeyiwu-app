import 'dart:convert';

import 'package:youdeyiwu_app/model/dto/query_param_dto.dart';
import 'package:youdeyiwu_app/model/response/data_response.dart';
import 'package:youdeyiwu_app/model/vo/message/message_client_vo.dart';
import 'package:youdeyiwu_app/model/vo/message/message_page_vo_converter.dart';
import 'package:youdeyiwu_app/model/vo/message/message_vo.dart';
import 'package:youdeyiwu_app/model/vo/page_vo.dart';
import 'package:youdeyiwu_app/tool/api_client.dart';

/// MessageApi
class MessageApi {
  static Future<PageVo<MessageClientVo>> queryAll({
    ApiClient? apiClient,
    QueryParamDto? queryParam,
  }) async {
    var uri =
        Uri.parse("/messages").replace(queryParameters: queryParam?.toJson());
    var response = await (apiClient ?? ApiClient()).get(uri);
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    return const MessagePageVoConverter()
        .fromJson(DataResponse.fromJson(decodedResponse).data);
  }

  static Future<MessageVo> query({
    ApiClient? apiClient,
    required int id,
  }) async {
    var response =
        await (apiClient ?? ApiClient()).get(Uri.parse("/messages/$id"));
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
    return MessageVo.withDataResponse(decodedResponse);
  }

  static Future<void> read({
    ApiClient? apiClient,
    required int id,
  }) async {
    await (apiClient ?? ApiClient()).patch(Uri.parse("/messages/$id/read"));
  }

  static Future<void> delete({
    ApiClient? apiClient,
    required int id,
  }) async {
    await (apiClient ?? ApiClient()).delete(Uri.parse("/messages/$id"));
  }
}
