import 'package:flutter/material.dart';
import 'package:rmpl_hrm/constants/colors.dart';
import 'package:rmpl_hrm/constants/dimensions.dart';
import 'package:rmpl_hrm/main.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPress,
  });

  final Function()? onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPress,
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        padding: mq.width > Dimensions.webScreenSize
            ? const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 20),
              )
            : const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 16),
              ),
        backgroundColor: MaterialStatePropertyAll(
          onPress == null
              ? AppColor.buttonColor.withOpacity(
                  0.6,
                )
              : AppColor.buttonColor,
        ),
        elevation: const MaterialStatePropertyAll(
          3.0,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
