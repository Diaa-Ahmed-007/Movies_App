import 'package:flutter/material.dart';

typedef validationFieled = String? Function(String?)?;

class customTextFiled extends StatelessWidget {
  String hintText;
  TextInputType keyboard;
  TextEditingController textController;
  bool ObscureText;
  Widget? suffixIcon;
  validationFieled validator;
  customTextFiled({
    required this.hintText,
    required this.keyboard,
    required this.textController,
    this.ObscureText = false,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.displayMedium,
          suffixIcon: suffixIcon,
          disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.white)),
          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.white)),
          border: const UnderlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.white)),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.white)),
          ),
      style:Theme.of(context).textTheme.displayMedium ,
      keyboardType: keyboard,
      controller: textController,
      obscureText: ObscureText,
      obscuringCharacter: "*",
      validator: validator,
    );
  }
}
