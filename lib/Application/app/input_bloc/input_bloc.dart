import 'package:bloc/bloc.dart';
import 'package:chatapp_dda/Application/app/input_bloc/input_states.dart';
import 'package:injectable/injectable.dart';

@injectable
class InputBloc extends Cubit<InputState> {
  InputBloc() : super(InputState.initial());

  void showEmojiKeyboard() {
    emit(
      state.copyWith(showEmojiKeyborad: true),
    );
  }

  void hideEmojiKeyboard() {
    emit(
      state.copyWith(showEmojiKeyborad: false),
    );
  }

  void messageChanged(String message) {
    emit(state.copyWith(
      message: message,
    ));
  }

  void showSendButton() {
    if (state.message.isEmpty) {
      emit(
        state.copyWith(showSendButton: false),
      );
    } else {
      emit(
        state.copyWith(showSendButton: true),
      );
    }
  }
}
