import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogCard extends StatelessWidget {
  final String imageUrl;
  final String header;
  final String content;
  const BlogCard({Key? key, required this.imageUrl, required this.header, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 351+10,
      width: 370,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.white70,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover
              ),
            ),
            height: 211,
            width: 370,
          ),
          const SizedBox(height: 12,),
          SizedBox(
            width: 370,
              child: Text(
                header,overflow: TextOverflow.fade,
                maxLines: 2,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 16),)),
          const SizedBox(height: 8,),
          SizedBox(
            width: 370,
              child: Text(content,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: GoogleFonts.poppins(height: 1.6,fontWeight: FontWeight.w400,color: Colors.white70,fontSize: 12),)),
        ],
      ),
    );
  }
}
