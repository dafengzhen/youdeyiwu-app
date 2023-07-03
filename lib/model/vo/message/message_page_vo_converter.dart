import 'package:json_annotation/json_annotation.dart';
import 'package:youdeyiwu_app/model/vo/message/message_client_vo.dart';
import 'package:youdeyiwu_app/model/vo/page_vo.dart';
import 'package:youdeyiwu_app/model/vo/pageable_vo.dart';

/// MessagePageVoConverter
class MessagePageVoConverter
    implements JsonConverter<PageVo<MessageClientVo>, Map<String, dynamic>> {
  const MessagePageVoConverter();

  @override
  PageVo<MessageClientVo> fromJson(Map<String, dynamic> json) {
    return PageVo(
      content: json['content']
          .map<MessageClientVo>((e) => MessageClientVo.fromJson(e))
          .toList(),
      pageable: PageableVo.fromJson(json['pageable']),
    );
  }

  @override
  Map<String, dynamic> toJson(PageVo<MessageClientVo> object) {
    return {
      'content': object.content,
      'pageable': object.pageable.toJson(),
    };
  }
}
