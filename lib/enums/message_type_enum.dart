import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum MessageTypeEnum {
  SYSTEM,
  OTHER,
  STATUS,
  LOGIN,
  REGISTER,
  LOGOUT,
  USER,
  ROLE,
  PERMISSION,
  SECTION,
  POST,
  TAG,
  COMMENT,
  REPLY,
  OAUTH_CLIENT,
  OAUTH_CLIENT_API,
}

extension MessageTypeEnumExtension on MessageTypeEnum {
  String value(BuildContext context) {
    switch (this) {
      case MessageTypeEnum.SYSTEM:
        return AppLocalizations.of(context)!.system;
      case MessageTypeEnum.OTHER:
        return AppLocalizations.of(context)!.other;
      case MessageTypeEnum.STATUS:
        return AppLocalizations.of(context)!.status;
      case MessageTypeEnum.LOGIN:
        return AppLocalizations.of(context)!.loginText;
      case MessageTypeEnum.REGISTER:
        return AppLocalizations.of(context)!.register;
      case MessageTypeEnum.LOGOUT:
        return AppLocalizations.of(context)!.logoutText;
      case MessageTypeEnum.USER:
        return AppLocalizations.of(context)!.user;
      case MessageTypeEnum.ROLE:
        return AppLocalizations.of(context)!.role;
      case MessageTypeEnum.PERMISSION:
        return AppLocalizations.of(context)!.permission;
      case MessageTypeEnum.SECTION:
        return AppLocalizations.of(context)!.section;
      case MessageTypeEnum.POST:
        return AppLocalizations.of(context)!.post;
      case MessageTypeEnum.TAG:
        return AppLocalizations.of(context)!.tag;
      case MessageTypeEnum.COMMENT:
        return AppLocalizations.of(context)!.commentText;
      case MessageTypeEnum.REPLY:
        return AppLocalizations.of(context)!.replyText;
      case MessageTypeEnum.OAUTH_CLIENT:
        return AppLocalizations.of(context)!.client;
      case MessageTypeEnum.OAUTH_CLIENT_API:
        return AppLocalizations.of(context)!.clientApi;
      default:
        throw ArgumentError("Unknown Enum");
    }
  }
}

MessageTypeEnum getMessageTypeEnumFromString(String value) {
  switch (value) {
    case 'SYSTEM':
      return MessageTypeEnum.SYSTEM;
    case 'OTHER':
      return MessageTypeEnum.OTHER;
    case 'STATUS':
      return MessageTypeEnum.STATUS;
    case 'LOGIN':
      return MessageTypeEnum.LOGIN;
    case 'REGISTER':
      return MessageTypeEnum.REGISTER;
    case 'LOGOUT':
      return MessageTypeEnum.LOGOUT;
    case 'USER':
      return MessageTypeEnum.USER;
    case 'ROLE':
      return MessageTypeEnum.ROLE;
    case 'PERMISSION':
      return MessageTypeEnum.PERMISSION;
    case 'SECTION':
      return MessageTypeEnum.SECTION;
    case 'POST':
      return MessageTypeEnum.POST;
    case 'TAG':
      return MessageTypeEnum.TAG;
    case 'COMMENT':
      return MessageTypeEnum.COMMENT;
    case 'REPLY':
      return MessageTypeEnum.REPLY;
    case 'OAUTH_CLIENT':
      return MessageTypeEnum.OAUTH_CLIENT;
    case 'OAUTH_CLIENT_API':
      return MessageTypeEnum.OAUTH_CLIENT_API;
    default:
      throw ArgumentError("Unknown Enum");
  }
}
