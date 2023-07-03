import 'package:json_annotation/json_annotation.dart';
import 'package:youdeyiwu_app/model/response/data_response.dart';
import 'package:youdeyiwu_app/model/vo/base_vo.dart';
import 'package:youdeyiwu_app/model/vo/user/user_ov_vo.dart';

part 'message_vo.g.dart';

/// MessageVo
@JsonSerializable()
class MessageVo extends BaseVo {
  String name;
  String? overview;
  String content;
  String messageType;
  String messageRange;
  int? businessId;
  String? businessName;
  String? businessRemark;
  int sender;
  int receiver;
  String senderAlias;
  String receiverAlias;

  MessageVo({
    required this.name,
    this.overview,
    required this.content,
    required this.messageType,
    required this.messageRange,
    this.businessId,
    this.businessName,
    this.businessRemark,
    required this.sender,
    required this.receiver,
    required this.senderAlias,
    required this.receiverAlias,
    required super.id,
    required super.deleted,
  });

  factory MessageVo.withDataResponse(Map<String, dynamic> json) {
    return MessageVo.fromJson(DataResponse.fromJson(json).data);
  }

  factory MessageVo.fromJson(Map<String, dynamic> json) =>
      _$MessageVoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageVoToJson(this);
}
