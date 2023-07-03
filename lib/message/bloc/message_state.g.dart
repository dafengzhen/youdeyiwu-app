// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageStateCWProxy {
  MessageState data(PageVo<MessageClientVo>? data);

  MessageState currentMessage(MessageVo? currentMessage);

  MessageState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MessageState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MessageState(...).copyWith(id: 12, name: "My name")
  /// ````
  MessageState call({
    PageVo<MessageClientVo>? data,
    MessageVo? currentMessage,
    bool? isLoading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMessageState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMessageState.copyWith.fieldName(...)`
class _$MessageStateCWProxyImpl implements _$MessageStateCWProxy {
  const _$MessageStateCWProxyImpl(this._value);

  final MessageState _value;

  @override
  MessageState data(PageVo<MessageClientVo>? data) => this(data: data);

  @override
  MessageState currentMessage(MessageVo? currentMessage) =>
      this(currentMessage: currentMessage);

  @override
  MessageState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MessageState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MessageState(...).copyWith(id: 12, name: "My name")
  /// ````
  MessageState call({
    Object? data = const $CopyWithPlaceholder(),
    Object? currentMessage = const $CopyWithPlaceholder(),
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return MessageState(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as PageVo<MessageClientVo>?,
      currentMessage: currentMessage == const $CopyWithPlaceholder()
          ? _value.currentMessage
          // ignore: cast_nullable_to_non_nullable
          : currentMessage as MessageVo?,
      isLoading: isLoading == const $CopyWithPlaceholder()
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool?,
    );
  }
}

extension $MessageStateCopyWith on MessageState {
  /// Returns a callable class that can be used as follows: `instanceOfMessageState.copyWith(...)` or like so:`instanceOfMessageState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageStateCWProxy get copyWith => _$MessageStateCWProxyImpl(this);
}
