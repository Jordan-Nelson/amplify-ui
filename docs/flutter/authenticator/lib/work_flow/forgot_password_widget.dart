import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_form_field.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_logo.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_scaffold.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
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
          Text(
            'Reset Password',
            style: Theme.of(context).textTheme.headline1,
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
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: state.resetPassword,
                  child: const Text('Send Code'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => state.changeStep(
                    AuthenticatorStep.signIn,
                  ),
                  child: const Text(
                    'Back to Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
