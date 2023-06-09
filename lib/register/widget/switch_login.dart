import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youdeyiwu_app/constants/app_routes.dart';

/// loginMessage
Widget loginMessage({required BuildContext context}) {
  return Padding(
    padding: EdgeInsets.all(40.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            AppLocalizations.of(context)!.accountExists,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.titleMedium),
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.login);
          },
          child: Text(
            AppLocalizations.of(context)!.loginStart,
          ),
        )
      ],
    ),
  );
}
