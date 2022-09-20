import 'dart:developer';

import 'package:ez_plant_app/shapes_clippers/curved_clipper.dart';
import 'package:ez_plant_app/widgets/styled_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  void _onLogin() {
    //
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saveLoginDetailNotifier = useValueNotifier(false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ClipPath(
                  clipper: CurvedClipper(),
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/leafy_bg.png',
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                      color: Colors.black.withOpacity(0.10),
                      colorBlendMode: BlendMode.screen,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                                'Welcome Back',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    ?.copyWith(),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Login to your account',
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
                      hint: 'Password',
                      obscureText: true,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Theme.of(context).textTheme.bodyText1?.color,
                        size: 15,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ValueListenableBuilder<bool>(
                                valueListenable: saveLoginDetailNotifier,
                                builder: (context, value, child) {
                                  return SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Checkbox(
                                      visualDensity: VisualDensity.compact,
                                      value: value,
                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      tristate: true,
                                      onChanged: (value) {
                                        log('check: $value');
                                        saveLoginDetailNotifier.value =
                                            value ?? false;
                                      },
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Remember me',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      fontSize: 12,
                                    ),
                              ),
                            ],
                          ),
                          Text(
                            'Forgot Password?',
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 12,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
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
                    child: const Text('Login'),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(),
                    children: [
                      TextSpan(
                        text: 'Sign up',
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


