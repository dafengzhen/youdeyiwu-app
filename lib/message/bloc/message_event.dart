import 'package:youdeyiwu_app/model/vo/message/message_client_vo.dart';
import 'package:youdeyiwu_app/model/vo/message/message_vo.dart';
import 'package:youdeyiwu_app/model/vo/page_vo.dart';

/// MessageEvent
abstract class MessageEvent {
  const MessageEvent();
}

/// UpdateDataMessageEvent
class UpdateDataMessageEvent extends MessageEvent {
  final PageVo<MessageClientVo>? data;

  const UpdateDataMessageEvent({
    this.data,
  }) : super();
}

/// MergeMessageDataMessageEvent
class MergeMessageDataMessageEvent extends MessageEvent {
  final PageVo<MessageClientVo> data;

  const MergeMessageDataMessageEvent({
    required this.data,
  }) : super();
}

/// UpdateCurrentMessageMessageEvent
class UpdateCurrentMessageMessageEvent extends MessageEvent {
  final MessageVo? currentMessage;

  const UpdateCurrentMessageMessageEvent({
    this.currentMessage,
  }) : super();
}

/// UpdateIsLoadingMessageEvent
class UpdateIsLoadingMessageEvent extends MessageEvent {
  final bool isLoading;

  const UpdateIsLoadingMessageEvent(this.isLoading) : super();
}
