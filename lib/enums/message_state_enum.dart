import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum MessageStateEnum {
  UNREAD,
  HAVE_READ,
}

extension MessageStateEnumExtension on MessageStateEnum {
  String value(BuildContext context) {
    switch (this) {
      case MessageStateEnum.UNREAD:
        return AppLocalizations.of(context)!.unread;
      case MessageStateEnum.HAVE_READ:
        return AppLocalizations.of(context)!.haveRead;
      default:
        throw ArgumentError("Unknown Enum");
    }
  }
}

MessageStateEnum getMessageStateEnumFromString(String value) {
  switch (value) {
    case 'UNREAD':
      return MessageStateEnum.UNREAD;
    case 'HAVE_READ':
      return MessageStateEnum.HAVE_READ;
    default:
      throw ArgumentError("Unknown Enum");
  }
}
