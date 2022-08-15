import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_form_field.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_logo.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_scaffold.dart';
import 'package:flutter/material.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AuthenticatorState state;

  @override
  Widget build(BuildContext context) {
    return WorkFlowScaffold(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WorkFlowLogo(),
          const SizedBox(height: 32),
          RichText(
            text: TextSpan(
              text: 'Welcome back to ',
              style: Theme.of(context).textTheme.headline1,
              children: <TextSpan>[
                TextSpan(
                  text: 'workflow',
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          AuthenticatorForm(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WorkFlowFormField(
                  labelText: 'Email',
                  initialValue: state.username,
                  onChanged: (value) => state.username = value,
                ),
                const SizedBox(height: 12),
                WorkFlowFormField(
                  labelText: 'Password',
                  obscureText: true,
                  initialValue: state.password,
                  onChanged: (value) => state.password = value,
                ),
                TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  onPressed: () {
                    state.changeStep(AuthenticatorStep.resetPassword);
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: state.signIn,
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () => state.changeStep(
                        AuthenticatorStep.signUp,
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
