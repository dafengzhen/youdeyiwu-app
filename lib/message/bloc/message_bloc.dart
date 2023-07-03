import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youdeyiwu_app/message/bloc/message_event.dart';
import 'package:youdeyiwu_app/message/bloc/message_state.dart';

/// MessageBloc
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(const MessageState()) {
    on<UpdateDataMessageEvent>(_updateDataMessageEvent);
    on<MergeMessageDataMessageEvent>(_mergeMessageDataMessageEvent);
    on<UpdateCurrentMessageMessageEvent>(_updateCurrentMessageMessageEvent);
    on<UpdateIsLoadingMessageEvent>(_updateIsLoadingMessageEvent);
  }

  /// _updateDataMessageEvent
  void _updateDataMessageEvent(
    UpdateDataMessageEvent event,
    Emitter<MessageState> emit,
  ) {
    emit(state.copyWith(
      data: event.data,
    ));
  }

  /// _mergeMessageDataMessageEvent
  void _mergeMessageDataMessageEvent(
    MergeMessageDataMessageEvent event,
    Emitter<MessageState> emit,
  ) {
    var data = state.data;
    data!.content.addAll(event.data.content);
    data.pageable = event.data.pageable;
    emit(state.copyWith(
      data: data,
    ));
  }

  /// _updateCurrentMessageMessageEvent
  void _updateCurrentMessageMessageEvent(
    UpdateCurrentMessageMessageEvent event,
    Emitter<MessageState> emit,
  ) {
    emit(state.copyWith(
      currentMessage: event.currentMessage,
    ));
  }

  /// _updateIsLoadingMessageEvent
  void _updateIsLoadingMessageEvent(
    UpdateIsLoadingMessageEvent event,
    Emitter<MessageState> emit,
  ) {
    emit(state.copyWith(isLoading: event.isLoading));
  }
}
