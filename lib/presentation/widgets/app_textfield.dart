import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/styles.dart';

class AppTextField extends StatefulWidget {
  final bool isPassword;
  final TextAlign? textAlign;
  final String? labelText;
  final String? hintText;
  final TextStyle? style;
  final String Function(String?)? validator;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final InputBorder? inputBorder;
  final int? maxLines;
  final bool hideBorder;
  final bool readOnly;
  final Function(String)? onChanged;
  final Function()? onTap;
  final List<TextInputFormatter>? formatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? errorText;

  final bool inputError;
  final FocusNode? focusNode;

  const AppTextField({
    Key? key,
    this.hintText,
    this.keyboardType,
    this.controller,
    this.textAlign,
    this.initialValue,
    this.maxLines = 1,
    this.style,
    this.validator,
    this.inputError = false,
    this.hideBorder = false,
    this.isPassword = false,
    this.inputBorder,
    this.onChanged,
    this.formatters,
    this.readOnly = false,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.errorText,
    this.focusNode,
  }) : super(key: key);

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.labelText ?? '',
            style: getRegularStyle(
                color: ColorManager.black900, fontSize: FontSize.s16),
          ),
          const SizedBox(height: 6),
          TextFormField(
            decoration: InputDecoration(
                fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                border: Theme.of(context).inputDecorationTheme.border,
                contentPadding:
                    Theme.of(context).inputDecorationTheme.contentPadding),
            textAlign: widget.textAlign ?? TextAlign.start,
            obscureText: widget.isPassword,
            focusNode: widget.focusNode,
            validator: widget.validator,
            onChanged: widget.onChanged,
            onTap: widget.onTap,
            readOnly: widget.readOnly,
            inputFormatters: widget.formatters,
            initialValue: widget.initialValue,
            maxLines: widget.maxLines,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
          ),
        ],
      );
}
