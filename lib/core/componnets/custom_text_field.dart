import 'package:diamond_store_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController _controller;
  final String? label;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool obscureText;
  final AutovalidateMode? autovalidateMode;
  final VoidCallback? onTap;
  final bool readOnly;

  const CustomTextField(
      {Key? key,
      required TextEditingController controller,
       this.label,
      this.hintText,
      required this.keyboardType,
      this.suffixIcon,
      this.prefixIcon,
      this.validator,
      this.obscureText = false,
      this.autovalidateMode,
      this.onTap,
      this.readOnly = false})
      : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      controller: _controller,
      onTap: onTap,
      validator: validator,
      obscureText: obscureText,
      autovalidateMode: autovalidateMode,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        //label: Text(label),
        hintStyle: const TextStyle(
          fontSize: 16,
          color: AppsColors.grey,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: AppsColors.black,
          ),
        ),
       
      ),
      cursorColor: AppsColors.black,
      
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }
}
