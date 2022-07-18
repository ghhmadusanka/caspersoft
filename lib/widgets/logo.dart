import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  final double? fontsize;
  const Logo({
    Key? key, this.fontsize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('<',style: GoogleFonts.poppins(fontSize: fontsize??50,color: const Color(0xffea4335),fontWeight: FontWeight.w700),),
        Text('C',style: GoogleFonts.poppins(fontSize: fontsize??50,color: Colors.white,fontWeight: FontWeight.w700)),
        Text('/',style: GoogleFonts.poppins(fontSize: fontsize??50,color: const Color(0xff4285f4),fontWeight: FontWeight.w700)),
        Text('S',style: GoogleFonts.poppins(fontSize: fontsize??50,color: Colors.white,fontWeight: FontWeight.w700)),
        Text('>',style: GoogleFonts.poppins(fontSize: fontsize??50,color: const Color(0xfffbbc05),fontWeight: FontWeight.w700)),
      ],);
  }
}