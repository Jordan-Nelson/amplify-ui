import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_form_field.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_logo.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_scaffold.dart';
import 'package:flutter/material.dart';

class ConfirmSignUpWidget extends StatelessWidget {
  const ConfirmSignUpWidget({
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
            'Enter your confirmation code',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 24),
          AuthenticatorForm(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WorkFlowFormField(
                  labelText: 'Email',
                  initialValue: state.username,
                  enabled: false,
                ),
                const SizedBox(height: 12),
                WorkFlowFormField(
                  labelText: 'Confirmation Code',
                  obscureText: true,
                  initialValue: state.confirmationCode,
                  onChanged: (value) => state.confirmationCode = value,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: state.confirmSignUp,
                  child: const Text('Confirm'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => state.changeStep(
                    AuthenticatorStep.signUp,
                  ),
                  child: const Text(
                    'Back to Sign Up',
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

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Nullam velit elit, porttitor luctus scelerisque non, venenatis ut nunc. '
            'Cras mollis tellus tellus, ac convallis leo consectetur vitae. '
            'Phasellus mollis magna massa, pretium dapibus nisi suscipit eget. '
            'Nulla a blandit felis. Nulla convallis elementum mollis. Aliquam viverra velit vel hendrerit lacinia. '
            'Nulla accumsan molestie nibh sit amet consectetur. Phasellus eros massa, facilisis sit amet nunc id, tempus finibus arcu.',
          ),
        ),
      ),
    );
  }
}
