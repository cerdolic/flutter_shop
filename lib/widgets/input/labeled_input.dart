import 'package:flutter/material.dart';
import 'package:shop/theme/text_styles.dart';

class LabeledInput extends StatefulWidget {
  const LabeledInput({
    super.key,
    required this.labelText,
    this.initialText = '',
    this.singleLine = true,
    this.isPassword = false,
    this.suffixIcon,
  });

  final String labelText;
  final String initialText;
  final bool singleLine;
  final bool isPassword;
  final Widget? suffixIcon;

  @override
  State<LabeledInput> createState() => _LabeledInputState();
}

class _LabeledInputState extends State<LabeledInput> {
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.labelText,
          style: darkGunmetal_16_500,
        ),
        SizedBox(
          height: widget.labelText.isNotEmpty ? 12 : 0,
        ),
        Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  obscureText: widget.isPassword ? _isPasswordHidden : false,
                  maxLines: widget.singleLine ? 1 : null,
                  initialValue: widget.initialText,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 16,
                    ),
                    border: InputBorder.none,
                  ),
                  // style: nickel_14_400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isPasswordHidden = !_isPasswordHidden;
    });
  }
}
