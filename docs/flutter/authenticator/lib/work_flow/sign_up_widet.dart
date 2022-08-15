import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_form_field.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_logo.dart';
import 'package:flutter_authenticator_example/work_flow/work_flow_scaffold.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
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
            'Create your account',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 24),
          AuthenticatorForm(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WorkFlowFormField(
                  labelText: 'Full Name',
                  initialValue:
                      state.getAttribute(CognitoUserAttributeKey.name) ?? '',
                  onChanged: (value) => state.name = value,
                ),
                const SizedBox(height: 12),
                WorkFlowFormField(
                  labelText: 'Work Email',
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
                const SizedBox(height: 24),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyText2,
                    children: <TextSpan>[
                      const TextSpan(
                        text:
                            'By clicking "Register" you agree to the workflow ',
                      ),
                      TextSpan(
                        text: 'Terms and Conditions',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const TermsAndConditionsView(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: state.signUp,
                  child: const Text('Register'),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () => state.changeStep(
                        AuthenticatorStep.signIn,
                      ),
                      child: const Text(
                        'Sign In',
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
