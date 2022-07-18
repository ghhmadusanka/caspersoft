import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Alignment? alignment;
  final double? width;
  final double? height;
  final String lable;
  final IconData? icon;
  final VoidCallback callback;
  const CustomButton({
    Key? key, this.alignment, required this.lable, this.icon, required this.callback, this.width, this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: callback,
      child: Align(
        alignment: alignment??Alignment.centerLeft,
        child: Container(
          height: width??50,
          width: height??200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff009e66),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon==null?Container():Icon(icon!),
              icon==null?Container():const SizedBox(width: 10,),
              Text(lable,style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
              ),),
            ],
          ),
        ),
      ),
    );
  }
}