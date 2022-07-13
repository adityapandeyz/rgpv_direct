import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../common/widgets/custom_button.dart';
import '../common/widgets/custom_textfield.dart';
import '../common/widgets/utils.dart';
import '../constants/global_variables.dart';
import '../main.dart';

class SignUpWidget extends StatefulWidget {
  final Function() onClickedSignIn;

  const SignUpWidget({
    Key? key,
    required this.onClickedSignIn,
  }) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            //height: MediaQuery.of(context).size.height * 0.68,
            decoration: const BoxDecoration(
                color: Colors.white //GlobalVariables.greyBackgroundColor,

                // ],
                ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      Container(
                        constraints: const BoxConstraints.expand(height: 120.0),
                        decoration: const BoxDecoration(color: Colors.grey),
                        child: Image.asset(
                          'assets/images/rgvp.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: usernameController,
                          hintText: 'Username',
                          ObsecureText: false,
                          CustomTextFieldValidator: (value) =>
                              value != null && value.length < 2
                                  ? 'Enter min. 2 characters'
                                  : null,
                        ),
                        const SizedBox(height: 18),
                        CustomTextField(
                          controller: emailController,
                          hintText: 'Email',
                          ObsecureText: false,
                          CustomTextFieldValidator: (email) =>
                              email != null && !EmailValidator.validate(email)
                                  ? 'Enter a Valid email'
                                  : null,
                        ),
                        const SizedBox(height: 18),
                        CustomTextField(
                          controller: passwordController,
                          hintText: 'Password',
                          ObsecureText: true,
                          CustomTextFieldValidator: (value) =>
                              value != null && value.length < 6
                                  ? 'Enter min. 6 characters '
                                  : null,
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        CustomButton(
                          text: 'Sign Up',
                          onTap: signUp,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            text: 'Already have an account?  ',
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = widget.onClickedSignIn,
                                text: 'Sign In',
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: GlobalVariables.secondaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      await FirebaseAuth.instance.currentUser!.updateDisplayName(
        usernameController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);

      Utils.showSnackBar(e.message);
    }

    //Navigator.of(context) not working!
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
