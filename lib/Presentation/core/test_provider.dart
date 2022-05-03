import 'package:chatapp_dda/Application/auth/auth_bloc.dart';
import 'package:chatapp_dda/Presentation/core/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class TestPageProvidet extends StatelessWidget {
  const TestPageProvidet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: const Test(),
      ),
    );
  }
}
