import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youdeyiwu_app/common/app_colors_light.dart';
import 'package:youdeyiwu_app/enums/message_state_enum.dart';
import 'package:youdeyiwu_app/enums/message_type_enum.dart';
import 'package:youdeyiwu_app/message/bloc/message_controller.dart';
import 'package:youdeyiwu_app/message/message_id.dart';
import 'package:youdeyiwu_app/model/vo/message/message_client_vo.dart';
import 'package:youdeyiwu_app/model/vo/page_vo.dart';
import 'package:youdeyiwu_app/tool/tool.dart';

/// buildMessages
Widget buildMessages({
  required BuildContext context,
  required PageVo<MessageClientVo> data,
  bool? isLoading,
}) {
  List<Widget> widgets = [];
  for (var element in data.content) {
    bool isUnread =
        getMessageStateEnumFromString(element.state) == MessageStateEnum.UNREAD;

    widgets.add(ListTile(
      onTap: () async {
        var result = await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MessageId(
            id: element.id,
          ),
        ));

        if (result == true) {
          MessageController(context: context).init();
        }
      },
      leading: SizedBox(
        width: 40.w,
        height: 40.h,
        child: Container(
          decoration: BoxDecoration(
            color: isUnread == true
                ? AppColorsLight.primaryColor
                : AppColorsLight.tertiaryBackgroundColor,
            borderRadius: BorderRadius.circular(40.w),
          ),
          child: Icon(
            color: isUnread == true
                ? AppColorsLight.primaryBackgroundSubtle
                : AppColorsLight.tertiaryColor,
            BootstrapIcons.bell,
          ),
        ),
      ),
      contentPadding: const EdgeInsets.all(0),
      trailing: Text(formatDateTime(element.createdOn!, ymd: true),
          style: TextStyle(
            fontSize: 14.sp,
          )),
      title: Text(
        "${getMessageTypeEnumFromString(element.messageType).value(context)}${AppLocalizations.of(context)!.notice}",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      subtitle: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: Text(
          element.name,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    ));
    widgets.add(SizedBox(
      height: 16.h,
    ));
  }

  return Column(
    children: [
      ...widgets,
      if (isLoading == true) buildLoadingIndicator(),
      if (widgets.isNotEmpty) buildBottomNoMoreDataWidget(),
    ],
  );
}
