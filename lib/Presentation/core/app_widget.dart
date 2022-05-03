import 'package:chatapp_dda/Application/auth/auth_bloc.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  final ThemeData theme = ThemeData.dark();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>()..authCheckRequested(),
        ),
      ],
      child: MaterialApp.router(
        title: 'O Chat',
        debugShowCheckedModeBanner: false,

        // builder: ExtendedNavigator.builder(router: app_router.Router()),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
            secondary: const Color.fromARGB(255, 170, 86, 144),
            primary: const Color.fromARGB(255, 127, 83, 166),
          ),

          appBarTheme:
              const AppBarTheme(backgroundColor: Color.fromARGB(255, 30, 30, 30)),
          scaffoldBackgroundColor: const Color.fromARGB(255, 24, 24, 24),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.deepPurple.shade300),
          // inputDecorationTheme: InputDecorationTheme(
          //   border: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(8),
          //   ),
          // ),
        ),
      ),
    );
  }
}
