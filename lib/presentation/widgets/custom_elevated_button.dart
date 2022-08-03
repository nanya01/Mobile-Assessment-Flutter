import 'package:flutter/material.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

class CustomElevatedButton extends StatefulWidget {
  final double? buttonHeight;
  final String text;
  final VoidCallback onPressed;
  const CustomElevatedButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.buttonHeight = 63})
      : super(key: key);

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xff6DE7B4)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0))),
            minimumSize: MaterialStateProperty.all<Size>(
                Size.fromHeight(widget.buttonHeight!))),
        child: Text(widget.text,
            style: getMediumStyle(color: ColorManager.white, fontSize: 24)));
  }
}
