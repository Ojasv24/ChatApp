import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:chatapp_dda/Application/auth/auth_state.dart';
import 'package:chatapp_dda/Application/auth/auth_bloc.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      state.maybeMap(
        unauthenticated: (_) => context.router.replace(const SignInPageRoute()),
        orElse: () {},
      );
    }, builder: (context, state) {
      return TextButton(
        child: const Text('hi'),
        onPressed: () {
          context.read<AuthBloc>().signedOut();
        },
      );
    });
  }
}
