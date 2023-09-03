// ignore: must_be_immutable
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.controller,
    this.title,
    this.isPassword = false,
    this.onSave,
    this.onChange,
    this.onPressed,
    this.onSubmit,
    this.onTap,
    this.validator,
    this.prefix,
    this.type,
    this.suffix,
    this.labelText,
    this.hintText,
    this.width = double.infinity,
    this.readOnly = false,
  });

  String? labelText;
  String? hintText;
  String? title;
  bool readOnly;
  double? width;
  IconData? prefix;
  IconData? suffix;
  TextInputType? type;
  bool isPassword = false;
  Function(String?)? onSave;
  Function(String?)? onChange;
  Function(String?)? onSubmit;
  VoidCallback? onTap;
  VoidCallback? onPressed;
  String? Function(String?)? validator;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          readOnly: readOnly,
          onTap: onTap,
          onSaved: onSave,
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
            // prefixIcon: Icon(
            //   prefix,
            // ),

            suffixIcon: IconButton(
              iconSize: 16,
              onPressed: onPressed,
              icon: Icon(
                suffix,
              ),
            ),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium,
            labelText: labelText,

            // fillColor: BlocProvider.of<TaskCubit>(context).isDark
            //     ? AppColors.deepGrey
            //     : AppColors.grey,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
          ),
          obscureText: isPassword,
          onChanged: onChange,
          onFieldSubmitted: onSubmit,
          keyboardType: type,
        ),
      ],
    );
  }
}
