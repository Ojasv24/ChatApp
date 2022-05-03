import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatapp_dda/Application/auth/auth_bloc.dart';
import 'package:chatapp_dda/Application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:chatapp_dda/Application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:chatapp_dda/Presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              context.router.replace(const ChatListPageRoute());
              context.read<AuthBloc>().authCheckRequested();
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  ShaderMask(
                    child: Image.asset(
                      'assets/logo.png',
                      repeat: ImageRepeat.repeat,
                      alignment: Alignment.topLeft,
                      scale: 4.3,
                      fit: BoxFit.none,
                    ),
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.purple.shade400,
                          Colors.deepPurple.shade800,
                        ],
                        // stops: const [0.0, 0.7],
                        begin: Alignment.centerRight,
                        end: Alignment.bottomLeft,
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.srcATop,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ShaderMask(
                    child: const Text(
                      'O CHAT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.purple.shade400,
                          Colors.deepPurple.shade800,
                        ],
                        // stops: const [0.0, 0.7],
                        begin: Alignment.centerRight,
                        end: Alignment.bottomLeft,
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.srcATop,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                        ),
                        autocorrect: false,
                        onChanged: (value) {
                          context.read<SignInFormBloc>().emailChanged(value);
                        },
                        validator: (_) {
                          return context
                              .read<SignInFormBloc>()
                              .state
                              .emailAddress
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              );
                        },
                      ),
                      const SizedBox(height: 8),
                      if (state.showNameField)
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.contact_mail_rounded),
                            labelText: 'Name',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),

                          autocorrect: false,
                          // obscureText: true,
                          onChanged: (value) {
                            context.read<SignInFormBloc>().nameChanged(value);
                          },
                          validator: (_) => context
                              .read<SignInFormBloc>()
                              .state
                              .name
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  veryLongUserName: (_) => 'Enter UserName',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      const SizedBox(height: 8),
                      if (state.showPasswordField)
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) {
                            context
                                .read<SignInFormBloc>()
                                .passwordChanged(value);
                          },
                          validator: (_) => context
                              .read<SignInFormBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  shortPassword: (_) => 'Short Password',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (!state.showPasswordField)
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<SignInFormBloc>()
                                      .signInPressed();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(Icons.login),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'SIGN IN WITH EMAIL',
                                        style: TextStyle(
                                          // color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (state.showPasswordField) ...[
                            ElevatedButton(
                              onPressed: () {
                                context.read<SignInFormBloc>().cancel();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.cancel_rounded),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Cancel',
                                      style: TextStyle(
                                        // color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.read<SignInFormBloc>().signInPressed();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.login),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Continue',
                                      style: TextStyle(
                                        // color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          context
                              .read<SignInFormBloc>()
                              .signInWithGooglePressed();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[800],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage("assets/google-logo.ico"),
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'SIGN IN WITH GOOGLE',
                                style: TextStyle(
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (state.isSubmitting) ...[
                    const SizedBox(height: 8),
                    const LinearProgressIndicator(value: null),
                  ]
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
