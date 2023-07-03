import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:youdeyiwu_app/model/vo/message/message_client_vo.dart';
import 'package:youdeyiwu_app/model/vo/message/message_vo.dart';
import 'package:youdeyiwu_app/model/vo/page_vo.dart';

part 'message_state.g.dart';

/// MessageState
@CopyWith()
class MessageState {
  final PageVo<MessageClientVo>? data;
  final MessageVo? currentMessage;
  final bool? isLoading;

  /// MessageState
  const MessageState({
    this.data,
    this.currentMessage,
    this.isLoading,
  });
}
