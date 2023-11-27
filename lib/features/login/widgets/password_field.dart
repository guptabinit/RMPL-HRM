import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rmpl_hrm/components/textfield.dart';
import 'package:rmpl_hrm/constants/colors.dart';
import 'package:rmpl_hrm/extensions/widget/box.dart';
import 'package:rmpl_hrm/state/login/models/password.dart';
import 'package:rmpl_hrm/state/login/providers/login.dart';

class PasswordTextField extends ConsumerWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Enter your password',
          style: TextStyle(
            fontFamily: 'Inter',
            color: darkColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        8.heightBox,
        customTextFormField(
          '************',
          controller: controller,
          textInputAction: TextInputAction.done,
          onChanged: ref.read(loginProvider.notifier).updatePassword,
          errorText: ref.watch(loginProvider).password.displayError?.text,
        ),
      ],
    );
  }
}