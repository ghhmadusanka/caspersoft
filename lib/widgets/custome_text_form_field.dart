import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatefulWidget {
  final String hint;
  final int? max;

  const CustomTextFormField({Key? key, required this.hint, this.max})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.poppins(
          fontSize: 14,
          color: Colors.white
      ),
      maxLines: widget.max ?? 1,
      scrollPadding: const EdgeInsets.all(0),
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xff1c1c1c),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.tealAccent)),
          hintText: widget.hint,
          hintStyle: GoogleFonts.poppins(
              fontSize: 20.0,
              color: const Color(0xff6c6c6c),
              fontWeight: FontWeight.w500),
          prefix: Container(
            width: 20,
          )),
    );
  }
}