import 'package:chatapp_dda/Domain/app/chat.dart';
import 'package:chatapp_dda/Domain/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserIcon extends StatelessWidget {
  final Chat? chat;
  final UserProfile? userProfile;
  final double size;
  const UserIcon({Key? key, this.chat, required this.size, this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          width: size,
          height: size,
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: chat == null
                ? Color(userProfile!.backGroundColor)
                : chat!.isGroupChat
                    ? Colors.amber
                    : Color(
                        chat!.usersMap.values.firstWhere((element) {
                          return element.isMe == false;
                        }).backGroundColor,
                      ),
          ),
        ),
        ClipOval(
          child: chat == null
              ? SvgPicture.network(
                  userProfile!.profilePhoto,
                  alignment: Alignment.topLeft,
                  width: size,
                  height: size,
                )
              : chat!.isGroupChat
                  ? SvgPicture.network(
                      chat!.groupChatPhoto!,
                      alignment: Alignment.topLeft,
                      width: size,
                      height: size,
                    )
                  : SvgPicture.network(
                      chat!.usersMap.values.firstWhere((element) {
                        return element.isMe == false;
                      }).profilePhoto,
                      alignment: Alignment.topLeft,
                      width: size,
                      height: size,
                    ),
        ),
      ],
    );
  }
}
