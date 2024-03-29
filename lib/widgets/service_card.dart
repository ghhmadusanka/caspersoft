import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class ServiceCard extends StatefulWidget {
  final IconData icon;
  final String header;
  final String content;

  const ServiceCard(
      {Key? key, required this.icon, required this.header, required this.content})
      : super(key: key);

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hover = true;
        });
      },
      onExit: (value) {
        setState(() {
          hover = false;
        });
      },
      child: Column(
        children: [Container(
          decoration: const BoxDecoration(
              boxShadow: [BoxShadow(
                  color: Colors.black45,
                  offset: Offset(1, 1),
                  blurRadius: 5.0,
                  spreadRadius: 0.5
              )
              ],color:  Color(0xff161616),
          ),

          margin: const EdgeInsets.only(bottom: 50),
          height: 237,
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(
                  left: 35, right: 35, bottom: 30, top: 20),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(widget.icon,color: Colors.white,size: 50,),
                    const SizedBox(height: 15,),
                    TextRenderer(
                      child: Text(
                        widget.header,
                        maxLines: 1,
                        style: GoogleFonts.poppins(fontSize: 19, color:Colors.white,fontWeight: FontWeight.w600),),
                    ),
                  const SizedBox(height: 8,),
                    TextRenderer(
                      child: Text(widget.content,
                        maxLines:4,style: GoogleFonts.poppins(fontSize: 14, color:Colors.white,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),),
              const Spacer(),
              AnimatedContainer(duration: const Duration(microseconds: 600),
              curve: Curves.easeOut,height: 2,color: !hover?const Color(0xff161616):const Color(0xff1a98ee),)
            ],
          ),
        )
        ],
      ),
    );
  }
}
