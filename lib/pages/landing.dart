import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/logo.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  List<String> navItems = ['About', 'Blog', 'Contact'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: const Logo(
                    fontsize: 31,
                  ),
                ),
                Spacer(),
                Row(
                  children: navItems
                      .map((e) => NavButton(
                            text: e,
                            function: () {},
                          ))
                      .toList(),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Enterprise . Mobility . Cloud",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Applications for ",
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                    MyBuildAnimatedText(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatefulWidget {
  final String text;
  final Function function;

  const NavButton({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color(0xff009e66),
      onHover: widget.function(),
      child: Padding(
        padding: EdgeInsets.only(right: 25),
        child: Text(
          widget.text,
          style: GoogleFonts.poppins(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: GoogleFonts.poppins(
          fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
      maxLines: 1,
      child: const AnimatedText(),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText(
          "Startup Businesses",
          speed: const Duration(milliseconds: 60),
        ),
        TypewriterAnimatedText(
          "Established Businesses",
          speed: const Duration(milliseconds: 60),
        ),
        TypewriterAnimatedText(
          "The Future",
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
