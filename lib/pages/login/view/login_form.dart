import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:kongdoc/constants.dart';
// import 'package:kongdoc/pages/sign_up/sign_up.dart';
import 'package:kongdoc/util/colors.dart';

import '../login.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? systemFailMessage),
              ),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/bloc_logo_small.png',
                  height: 120,
                ),
                const SizedBox(height: 16),
                _UserIdInput(),
                const SizedBox(height: 8),
                _PasswordInput(),
                const SizedBox(height: 8),
                _LoginButton(),
                const SizedBox(height: 8),
                // _GoogleLoginButton(),
                const SizedBox(height: 4),
                // _SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class _SignUpButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return TextButton(
//       key: const Key('loginForm_createAccount_flatButton'),
//       onPressed: () => Navigator.of(context).push<void>(SignUpPage.route()),
//       child: Text(
//         'CREATE ACCOUNT',
//         style: TextStyle(color: theme.primaryColor),
//       ),
//     );
//   }
// }

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      key: const Key('loginForm_googleLogin_raisedButton'),
      label: const Text(
        'SIGN IN WITH GOOGLE',
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        // backgroundColor: theme.colorScheme.secondary,
      ),
      icon: const Icon(FontAwesomeIcons.google, color: Colors.white),
      onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('loginForm_continue_raisedButton'),
          style: ElevatedButton.styleFrom(
            backgroundColor: HexColor.fromHex('#04376A'),
            minimumSize: const Size.fromHeight(50), // NEW
          ),
          onPressed: (state.status.isSubmissionInProgress ||
                  state.status.isSubmissionSuccess)
              ? null
              : (state.status.isValidated
                  ? () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      context.read<LoginCubit>().logIn();
                    }
                  : null),
          child: const Text('LOGIN'),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            helperText: '',
            errorText: state.password.invalid ? 'invalid password' : null,
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'email',
            helperText: '',
            errorText: state.email.invalid ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}

class _UserIdInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.userId != current.userId,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_idInput_textField'),
          onChanged: (userId) =>
              context.read<LoginCubit>().userIdChanged(userId),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: '?????????',
            helperText: '',
            errorText: state.userId.invalid ? '????????? ?????? ??????????????????.' : null,
          ),
        );
      },
    );
  }
}
