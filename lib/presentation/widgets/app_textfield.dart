import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  IconData _passwordIcon = Icons.visibility;
  late bool _obscureText;
  late TextEditingController controller;

  @override
  void initState() {
    _obscureText = widget.isPassword;
    controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);

    super.initState();
  }

  void _toggleTextVisibility() {
    if (mounted) {
      setState(() {
        _obscureText = !_obscureText;
        if (_passwordIcon == Icons.visibility) {
          _passwordIcon = Icons.visibility_off;
        } else {
          _passwordIcon = Icons.visibility;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.labelText ?? ''),
          const SizedBox(height: 6),
          TextFormField(
            textAlign: widget.textAlign ?? TextAlign.start,
            obscureText: _obscureText,
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
