// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_client_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageClientVo _$MessageClientVoFromJson(Map<String, dynamic> json) =>
    MessageClientVo(
      name: json['name'] as String,
      overview: json['overview'] as String?,
      content: json['content'] as String,
      messageType: json['messageType'] as String,
      state: json['state'] as String,
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

Map<String, dynamic> _$MessageClientVoToJson(MessageClientVo instance) {
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
  val['state'] = instance.state;
  return val;
}
