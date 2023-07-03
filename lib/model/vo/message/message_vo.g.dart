// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageVo _$MessageVoFromJson(Map<String, dynamic> json) => MessageVo(
      name: json['name'] as String,
      overview: json['overview'] as String?,
      content: json['content'] as String,
      messageType: json['messageType'] as String,
      messageRange: json['messageRange'] as String,
      businessId: json['businessId'] as int?,
      businessName: json['businessName'] as String?,
      businessRemark: json['businessRemark'] as String?,
      sender: json['sender'] as int,
      receiver: json['receiver'] as int,
      senderAlias: json['senderAlias'] as String,
      receiverAlias: json['receiverAlias'] as String,
      id: json['id'] as int,
      deleted: json['deleted'] as bool,
    )
      ..createdBy = json['createdBy'] as int?
      ..updatedBy = json['updatedBy'] as int?
      ..creatorAlias = json['creatorAlias'] as String?
      ..updaterAlias = json['updaterAlias'] as String?
      ..createdOn = json['createdOn'] as String?
      ..updatedOn = json['updatedOn'] as String?
      ..user = json['user'] == null
          ? null
          : UserOvVo.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$MessageVoToJson(MessageVo instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('updatedBy', instance.updatedBy);
  writeNotNull('creatorAlias', instance.creatorAlias);
  writeNotNull('updaterAlias', instance.updaterAlias);
  writeNotNull('createdOn', instance.createdOn);
  writeNotNull('updatedOn', instance.updatedOn);
  val['deleted'] = instance.deleted;
  writeNotNull('user', instance.user);
  val['name'] = instance.name;
  writeNotNull('overview', instance.overview);
  val['content'] = instance.content;
  val['messageType'] = instance.messageType;
  val['messageRange'] = instance.messageRange;
  writeNotNull('businessId', instance.businessId);
  writeNotNull('businessName', instance.businessName);
  writeNotNull('businessRemark', instance.businessRemark);
  val['sender'] = instance.sender;
  val['receiver'] = instance.receiver;
  val['senderAlias'] = instance.senderAlias;
  val['receiverAlias'] = instance.receiverAlias;
  return val;
}
