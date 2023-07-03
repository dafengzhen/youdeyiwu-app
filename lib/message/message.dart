import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youdeyiwu_app/message/bloc/message_bloc.dart';
import 'package:youdeyiwu_app/message/bloc/message_controller.dart';
import 'package:youdeyiwu_app/message/bloc/message_state.dart';
import 'package:youdeyiwu_app/message/widget/messages.dart';
import 'package:youdeyiwu_app/tool/tool.dart';

/// Message
class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

/// _MessageIdState
class _MessageState extends State<Message> {
  late ScrollController _scrollController;
  late MessageController _messageController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _messageController = MessageController(context: context)..init();
  }

  /// _refresh
  Future<void> _refresh() async {
    await _messageController.init();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  /// _scrollListener
  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _messageController.LoadMoreData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(builder: (context, state) {
      var data = state.data;
      var isLoading = state.isLoading;

      return SafeArea(
          child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: RefreshIndicator(
            onRefresh: _refresh,
            child: data == null || data.content.isEmpty
                ? Center(child: buildNoMoreDataWidget(context: context))
                : ListView(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: [
                      buildMessages(
                          context: context, data: data, isLoading: isLoading),
                    ],
                  ),
          ),
        ),
      ));
    });
  }
}
