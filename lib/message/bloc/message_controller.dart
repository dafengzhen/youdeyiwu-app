import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:youdeyiwu_app/api/message_api.dart';
import 'package:youdeyiwu_app/api/path_api.dart';
import 'package:youdeyiwu_app/enums/snack_bar_enum.dart';
import 'package:youdeyiwu_app/message/bloc/message_bloc.dart';
import 'package:youdeyiwu_app/message/bloc/message_event.dart';
import 'package:youdeyiwu_app/model/dto/query_param_dto.dart';
import 'package:youdeyiwu_app/service/global/bloc/global_bloc.dart';
import 'package:youdeyiwu_app/service/global/bloc/global_event.dart';
import 'package:youdeyiwu_app/tool/api_client.dart';
import 'package:youdeyiwu_app/tool/tool.dart';

/// MessageController
class MessageController {
  final BuildContext context;

  /// MessageIdController
  MessageController({required this.context});

  /// init
  Future<void> init() async {
    context.read<MessageBloc>().add(const UpdateIsLoadingMessageEvent(true));
    final apiClient = ApiClient();

    try {
      var path = await PathApi.query(apiClient: apiClient);
      context.read<GlobalBloc>().add(PathGlobalEvent(path));

      if (path.user == null) {
        showSnackBar(
          context: context,
          e: AppLocalizations.of(context)!.notLoggedIn,
        );
        return;
      }

      var data = await MessageApi.queryAll(apiClient: apiClient);
      context.read<MessageBloc>().add(
            UpdateDataMessageEvent(data: data),
          );
    } catch (e, stackTrace) {
      showSnackBar(context: context, e: e, stackTrace: stackTrace);
    } finally {
      apiClient.close();
      context.read<MessageBloc>().add(const UpdateIsLoadingMessageEvent(false));
    }
  }

  /// LoadMoreData
  Future<void> LoadMoreData() async {
    var apiClient = ApiClient();

    try {
      context.read<MessageBloc>().add(const UpdateIsLoadingMessageEvent(true));
      var state = context.read<MessageBloc>().state;
      var pageable = state.data?.pageable;
      if (pageable == null) {
        showSnackBar(
          context: context,
          e: AppLocalizations.of(context)!.dataNotFound,
        );
        return;
      }

      if (pageable.next == false) {
        return;
      }

      var vo = await MessageApi.queryAll(
        apiClient: apiClient,
        queryParam: QueryParamDto(
          page: (pageable.page + 1).clamp(1, pageable.pages).toString(),
        ),
      );

      context.read<MessageBloc>().add(MergeMessageDataMessageEvent(data: vo));
    } catch (e, stackTrace) {
      showSnackBar(context: context, e: e, stackTrace: stackTrace);
    } finally {
      apiClient.close();
      context.read<MessageBloc>().add(const UpdateIsLoadingMessageEvent(false));
    }
  }

  /// query
  Future<void> query({required int id}) async {
    final apiClient = ApiClient();

    try {
      var vo = await MessageApi.query(apiClient: apiClient, id: id);
      context.read<MessageBloc>().add(
            UpdateCurrentMessageMessageEvent(currentMessage: vo),
          );
    } catch (e, stackTrace) {
      showSnackBar(context: context, e: e, stackTrace: stackTrace);
    } finally {
      apiClient.close();
    }
  }

  /// read
  Future<void> read({required int id}) async {
    final apiClient = ApiClient();

    try {
      await MessageApi.read(apiClient: apiClient, id: id);
    } catch (e, stackTrace) {
      showSnackBar(context: context, e: e, stackTrace: stackTrace);
    } finally {
      apiClient.close();
    }
  }

  /// delete
  Future<void> delete({required int id}) async {
    final apiClient = ApiClient();

    try {
      await MessageApi.delete(apiClient: apiClient, id: id);

      showSnackBar(
        context: context,
        e: AppLocalizations.of(context)!.deleteComplete,
        type: SnackBarTypeEnum.success,
      );

      context.read<MessageBloc>().add(
            UpdateCurrentMessageMessageEvent(currentMessage: null),
          );

      Navigator.of(context).pop(true);
    } catch (e, stackTrace) {
      showSnackBar(context: context, e: e, stackTrace: stackTrace);
    } finally {
      apiClient.close();
    }
  }
}
