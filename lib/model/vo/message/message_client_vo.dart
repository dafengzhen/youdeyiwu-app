import 'package:json_annotation/json_annotation.dart';
import 'package:youdeyiwu_app/model/response/data_response.dart';
import 'package:youdeyiwu_app/model/vo/base_vo.dart';
import 'package:youdeyiwu_app/model/vo/user/user_ov_vo.dart';

part 'message_client_vo.g.dart';

/// MessageClientVo
@JsonSerializable()
class MessageClientVo extends BaseVo {
  String name;
  String? overview;
  String content;
  String messageType;
  String state;

  MessageClientVo({
    required this.name,
    this.overview,
    required this.content,
    required this.messageType,
    required this.state,
    required super.id,
    required super.deleted,
  });

  factory MessageClientVo.withDataResponse(Map<String, dynamic> json) {
    return MessageClientVo.fromJson(DataResponse.fromJson(json).data);
  }

  factory MessageClientVo.fromJson(Map<String, dynamic> json) =>
      _$MessageClientVoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageClientVoToJson(this);
}
