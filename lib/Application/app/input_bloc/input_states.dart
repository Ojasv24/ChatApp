import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_states.freezed.dart';

@freezed
class InputState with _$InputState {
  const factory InputState({
    required bool showEmojiKeyborad,
    required bool showSendButton,
    required String message,
  }) = _InputState;

  factory InputState.initial() => const InputState(
        showEmojiKeyborad: false,
        showSendButton: false,
        message: '',
      );
}
