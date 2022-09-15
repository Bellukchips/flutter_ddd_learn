import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_learn/application/application.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(listener: (context, state) {
      state.when(
          (status) => FlushbarHelper.createError(
                message: 'Failure',
              ),
          loading: () => null,
          success: () => null,
          errorMsg: (e) => null);
    }, child: BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            child: ListView(
              children: [
                const Text(
                  '📝',
                  style: TextStyle(fontSize: 50),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                const _EmailForm(),
                const SizedBox(
                  height: 20,
                ),
                const _PassworForm(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          context.read<AuthCubit>().signInWithEmailAndPassword(
                              state.emailAddress, state.password);
                        },
                        child: const Text('Sign IN'),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          context
                              .read<AuthCubit>()
                              .registerWithEmailAndPassword(
                                  state.emailAddress, state.password);
                        },
                        child: const Text('Register'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    context.read<AuthCubit>().signInWithGoogle();
                  },
                  child: const Text('Sign In With Google'),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}

class _EmailForm extends StatelessWidget {
  const _EmailForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (previous, current) =>
          previous.emailAddress != current.emailAddress,
      builder: (context, state) {
        return TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            errorText: state.emailAddress.value.fold(
                (l) => l.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                (_) => null),
            prefixIcon: const Icon(Icons.email),
            labelText: 'Email',
          ),
          autocorrect: false,
          autofocus: false,
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.emailChanged(value)),
        );
      },
    );
  }
}

class _PassworForm extends StatelessWidget {
  const _PassworForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            errorText: state.password.value.fold(
                (l) => l.maybeMap(
                      invalidPassword: (_) => 'Invalid Password',
                      orElse: () => null,
                    ),
                (_) => null),
            prefixIcon: const Icon(Icons.lock),
            labelText: 'Password',
          ),
          autocorrect: false,
          autofocus: false,
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.passwordChanged(value)),
        );
      },
    );
  }
}
