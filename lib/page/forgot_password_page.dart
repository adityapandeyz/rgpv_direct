import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rgpv_direct/common/widgets/custom_button.dart';
import 'package:rgpv_direct/common/widgets/custom_text_button.dart';
import 'package:rgpv_direct/common/widgets/custom_textfield.dart';
import 'package:rgpv_direct/common/widgets/utils.dart';
import 'package:rgpv_direct/main.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

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
            decoration: const BoxDecoration(color: Colors.white),
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
                          'assets/images/Rajiv_Gandhi_Proudyogiki_Vishwavidyalaya_(RGPV)_Admin_building_2.jpg',
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
                        const Text(
                          'Enter the email address associated with your account to receive password reset link.',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Text(
                          '(Make sure to check the Spam folder.)',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.center,
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
                        const SizedBox(height: 20),
                        const SizedBox(height: 22),
                        CustomButton(
                          text: 'Reset Password',
                          onTap: resetPassword,
                        ),
                        const SizedBox(height: 8),
                        CustomTextButton(
                          text: 'Cancel',
                          onTap: () => Navigator.pop(context),
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

  Future resetPassword() async {
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
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text.trim(),
      );
      Utils.showSnackBar('Password Reset Email Sent');
      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e);

      Utils.showSnackBar(e.message);
      Navigator.of(context).pop;
    }
  }
}
