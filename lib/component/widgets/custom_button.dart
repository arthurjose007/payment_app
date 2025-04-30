import 'package:flutter/material.dart';
import 'package:payment_app/component/colors.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;
  const CustomButton({
    super.key,
    this.backgroundColor = AppColor.mainColor,
    this.textColor,
    required this.text,
    this.onTap,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width-60,
        margin: const EdgeInsets.only(left: 30,right: 30),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: AppColor.mainColor,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: textColor),
          ),
        ),
      ),
    );
  }
}
