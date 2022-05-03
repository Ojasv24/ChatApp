import 'package:chatapp_dda/Application/app/chat_bloc/chat_bloc.dart';
import 'package:chatapp_dda/Application/app/input_bloc/input_bloc.dart';
import 'package:chatapp_dda/Application/app/input_bloc/input_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageInput extends StatefulWidget {
  const MessageInput({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  String prev = '';
  @override
  Widget build(BuildContext context) {
    widget.controller.addListener(_listener);
    return BlocBuilder<InputBloc, InputState>(
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 30, 30, 30),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 4,
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: state.showEmojiKeyborad
                        ? const Icon(Icons.keyboard_alt_outlined)
                        : const Icon(Icons.sentiment_satisfied_alt_rounded),
                  ),
                  onTap: () {
                    if (state.showEmojiKeyborad) {
                      context.read<InputBloc>().hideEmojiKeyboard();
                      showKeyboard();
                    } else {
                      context.read<InputBloc>().showEmojiKeyboard();
                      dismissKeyboard();
                    }
                  },
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Expanded(
                child: TextField(
                  onTap: () => context.read<InputBloc>().hideEmojiKeyboard(),
                  controller: widget.controller,
                  decoration: const InputDecoration(
                    hintText: 'Message',
                    filled: true,
                    fillColor: Color.fromARGB(255, 30, 30, 30),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                  minLines: 1,
                  maxLines: 10,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                  autofocus: false,
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: state.showSendButton
                    ? IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Colors.deepPurpleAccent[100],
                        ),
                        onPressed: () {
                          context
                              .read<ChatBloc>()
                              .messageChanged(widget.controller.text);
                          context.read<ChatBloc>().sendMessage();
                          widget.controller.clear();
                        },
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        );
      },
    );
  }

  _listener() {
    if (prev != widget.controller.text) {
      prev = widget.controller.text;
      context.read<InputBloc>().messageChanged(widget.controller.text);
      context.read<InputBloc>().showSendButton();
    }
  }

  void showKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.show');
  }

  void dismissKeyboard() {
    SystemChannels.textInput.invokeListMethod('TextInput.hide');
  }
}
