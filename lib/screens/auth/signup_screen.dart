import 'package:ez_plant_app/widgets/styled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  void _onLogin() {
    //
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Register',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    ?.copyWith(),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Create your new account',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'assets/images/leaf.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    StyledTextInput(
                      hint: 'Full Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StyledTextInput(
                      hint: 'example@example.com',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StyledTextInput(
                      hint: 'Password',
                      obscureText: true,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StyledTextInput(
                      hint: 'Confirm Password',
                      obscureText: true,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By signing you agree to our\n',
                        style:
                            Theme.of(context).textTheme.bodyText2?.copyWith(),
                        children: [
                          TextSpan(
                            text: 'Terms of use ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(),
                            children: [
                              TextSpan(
                                text: 'and ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(),
                                children: [
                                  TextSpan(
                                    text: 'privacy policy.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      primary:
                          Theme.of(context).buttonTheme.colorScheme!.primary,
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                    ),
                    onPressed: _onLogin,
                    child: const Text('Sign Up'),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(),
                    children: [
                      TextSpan(
                        style:
                            Theme.of(context).textTheme.bodyText1?.copyWith(),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
