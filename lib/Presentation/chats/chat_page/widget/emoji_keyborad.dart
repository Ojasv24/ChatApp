import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class EmojiKeyborad extends StatelessWidget {
  const EmojiKeyborad({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  _onEmojiSelected(Emoji emoji) {
    controller
      ..text += emoji.emoji
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length));
  }

  _onBackspacePressed() {
    controller
      ..text = controller.text.characters.skipLast(1).toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length));
  }

  @override
  Widget build(BuildContext context) {
    return EmojiPicker(
      onEmojiSelected: (Category category, Emoji emoji) {
        _onEmojiSelected(emoji);
      },
      onBackspacePressed: _onBackspacePressed,
      config: Config(
        columns: 8,
        emojiSizeMax: 32,
        verticalSpacing: 0,
        horizontalSpacing: 0,
        iconColor: Colors.white24,
        iconColorSelected: Colors.deepPurpleAccent.shade100,
        bgColor: const Color.fromARGB(255, 30, 30, 30),
        progressIndicatorColor: Colors.blue,
        noRecentsText: 'No Recents',
        backspaceColor: Colors.deepPurpleAccent.shade100,
        noRecentsStyle: const TextStyle(fontSize: 20, color: Colors.black26),
        tabIndicatorAnimDuration: kTabScrollDuration,
        categoryIcons: const CategoryIcons(),
        buttonMode: ButtonMode.CUPERTINO,
      ),
    );
  }
}
