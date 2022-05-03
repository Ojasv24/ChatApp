import 'package:chatapp_dda/Application/auth/auth_bloc.dart';
import 'package:chatapp_dda/Application/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(state.mapOrNull(
                        authenticated: (user) => user.userProfile.realName) ??
                    ''),
                accountEmail: Text(state.mapOrNull(
                        authenticated: (user) => user.userProfile.emailId) ??
                    ''),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: state.maybeMap(
                      authenticated: (user) =>
                          Color(user.userProfile.backGroundColor),
                      orElse: () => null),
                  child: state.maybeMap(
                    authenticated: (user) => ClipOval(
                      child: SvgPicture.network(user.userProfile.profilePhoto),
                    ),
                    orElse: () => null,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  context.read<AuthBloc>().signedOut();
                },
                horizontalTitleGap: 0,
                leading: const Icon(
                  Icons.logout_rounded,
                  color: Colors.blueGrey,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
