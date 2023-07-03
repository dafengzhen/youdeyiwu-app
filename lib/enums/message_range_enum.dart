import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum MessageRangeEnum {
  ALL,
  USER,
}

extension MessageRangeEnumExtension on MessageRangeEnum {
  String value(BuildContext context) {
    switch (this) {
      case MessageRangeEnum.ALL:
        return AppLocalizations.of(context)!.allUser;
      case MessageRangeEnum.USER:
        return AppLocalizations.of(context)!.user;
      default:
        throw ArgumentError("Unknown Enum");
    }
  }
}

MessageRangeEnum getMessageRangeEnumFromString(String value) {
  switch (value) {
    case 'ALL':
      return MessageRangeEnum.ALL;
    case 'USER':
      return MessageRangeEnum.USER;
    default:
      throw ArgumentError("Unknown Enum");
  }
}
