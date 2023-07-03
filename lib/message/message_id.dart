import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youdeyiwu_app/message/bloc/message_bloc.dart';
import 'package:youdeyiwu_app/message/bloc/message_controller.dart';
import 'package:youdeyiwu_app/message/bloc/message_state.dart';
import 'package:youdeyiwu_app/tool/tool.dart';

/// MessageId
class MessageId extends StatefulWidget {
  final int id;

  const MessageId({Key? key, required this.id}) : super(key: key);

  @override
  State<MessageId> createState() => _MessageIdState();
}

/// _MessageIdIdState
class _MessageIdState extends State<MessageId> {
  late MessageController _messageController;

  @override
  void initState() {
    super.initState();
    var id = widget.id;
    _messageController = MessageController(context: context)..query(id: id);
    _messageController.read(id: id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(builder: (context, state) {
      var currentMessage = state.currentMessage;
      var overview = currentMessage?.overview;
      var id = widget.id;

      return SafeArea(
          child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: currentMessage == null
              ? Column(
                  children: [
                    buildNoMoreDataWidget(context: context),
                  ],
                )
              : Container(
                  padding: EdgeInsets.all(8.w),
                  child: Center(
                    child: Wrap(
                      runSpacing: 16.h,
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          currentMessage.name,
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.justify,
                        ),
                        if (overview != null)
                          Text(
                            overview,
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.justify,
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  _messageController.delete(id: id);
                                },
                                child:
                                    Text(AppLocalizations.of(context)!.delete))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ));
    });
  }
}
