import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'contact.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> with TickerProviderStateMixin {
  // late VideoPlayerController _controller;
  double height = 0;
  double width = 0;

  List<String> navItems = ['About', 'Blog', 'Contact'];
  List<String> techList = [
    'candroid.png',
    'capple.png',
    'casp.png',
    'cfirebase.png',
    'cflutter.png',
    'cgoole.png',
    'cmeta.png',
    'cml.png',
    'cnode.png',
    'creact.png'
  ];

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset('assets/video.mp4');
  }

  // Future<bool?> started() async {
  //   if(!_controller.value.isInitialized) {
  //     await _controller.initialize();
  //     _controller.setVolume(0);
  //     await _controller.play();
  //     await _controller.setLooping(true);
  //   }
  //   return _controller.value.isInitialized;
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // print(_controller.value.size);
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: Stack(
        children: [
          // buildBackgrounVideo(),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black45,
          ),
          Column(
            children: [
              buildHeader(context),
              Expanded(child: buildBody(context)),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 55,
            child: Column(
              children: [
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: ImageRenderer(
                          alt: "CasperSoft | Software company in Sri Lanka",
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/lg.png?alt=media&token=de4aa1c8-8fea-403c-8262-f573b68822fe',
                            width: 200,
                            height: 200,
                          )),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextRenderer(
                        text: "Enterprise . Mobility . Cloud",
                        style: TextRendererStyle.header2,
                        child: AutoSizeText(
                          "Enterprise . Mobility . Cloud",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Colors.white70),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextRenderer(
                          text:
                              'applications for Established and startups business',
                          child: Text("Apps for ",
                              style: GoogleFonts.poppins(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white70)),
                        ),
                        const MyBuildAnimatedText(),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/Scroll-Icon-Animation_transparent.gif?alt=media&token=12c606a6-4ab3-43bd-8616-ec1a64027fa0',
                      height: 40,
                      width: 40,
                      color: Colors.white70,
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Row(
                            children: [
                              Text(
                                "Sri",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              TextRenderer(
                                child: Text("ලංකා",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //return Image.network(color:Colors.white70,techList[index],fit: BoxFit.scaleDown,);
                      MediaQuery.of(context).size.width > 990
                          ? buildTechno2()
                          : const Spacer(),
                      //const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () async {
                                  //https://twitter.com/caspersoftsl
                                  if (!await launchUrl(Uri.parse(
                                      'https://twitter.com/caspersoftsl'))) {
                                    throw 'Could not launch';
                                  }
                                },
                                icon: const Icon(
                                  FontAwesome.twitter,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            IconButton(
                                onPressed: () async {
                                  if (!await launchUrl(Uri.parse(
                                      'https://www.facebook.com/caspersoft.info'))) {
                                    throw 'Could not launch';
                                  }
                                },
                                icon: const Icon(
                                  FontAwesome.facebook_square,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  FontAwesome.linkedin_square,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            IconButton(
                                onPressed: () async {
                                  if (!await launchUrl(Uri.parse(
                                      'https://github.com/ghhmadusanka'))) {
                                    throw 'Could not launch';
                                  }
                                },
                                icon: const Icon(
                                  FontAwesome.github,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 2,
            color: Color(0xff1a98ee),
          ),
          Container(
            color: Colors.black54,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                MediaQuery.of(context).size.width < 990
                    ? Row(
                        children: [
                          buildTechno2(),
                        ],
                      )
                    : Container(),
                const Services(
                  isAbout: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white10,
                  child: BootstrapRow(children: [
                    BootstrapCol(
                      sizes: 'col-sm-6 col-md-6 col-lg-3 col-xs-12',
                      child: const ContactCard2(
                          icon: Icons.store_mall_directory_outlined,
                          header: '<C/S>',
                          content: 'CasperSoft'),
                    ),
                    BootstrapCol(
                      sizes: 'col-sm-6 col-md-6 col-lg-3 col-xs-12',
                      child: const ContactCard2(
                          icon: Icons.location_on_rounded,
                          header: 'Location',
                          content: 'Gampaha'),
                    ),
                    BootstrapCol(
                      sizes: 'col-sm-12 col-md-6 col-lg-3 col-xs-12',
                      child: const ContactCard2(
                          icon: Icons.call,
                          header: 'Call Us',
                          content: '770072209 / 784973126'),
                    ),
                    BootstrapCol(
                      sizes: 'col-sm-12 col-md-6 col-lg-3 col-xs-12',
                      child: const ContactCard2(
                          icon: Icons.alternate_email,
                          header: 'Email Us',
                          content: 'hashan@caspersoft.info'),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildTechno2() {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
              height: 80,
              width: double.infinity,
              child: CarouselSlider.builder(
                itemCount: techList.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Image.asset(
                    height: 80,
                    width: 80,
                    'assets/${techList[itemIndex]}',
                    fit: BoxFit.scaleDown,
                    color: Colors.white70,
                  );
                },
                options: CarouselOptions(
                  reverse: true,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.3,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              )),
          const SizedBox(
            height: 14,
          ),
          Text(
            'TECHNOLOGIES WE OFFER',
            style: GoogleFonts.dosis(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black45),
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/lg%20copy.png?alt=media&token=be0a7fb5-6a5b-4216-a910-0178b8524ae7',
              height: 40,
              width: 40,
              color: Colors.white70,
            ),
          ),
          const Spacer(),
          Row(
            children: navItems
                .map((e) => NavButton(
                      text: e,
                      function: () {
                        Future.delayed(const Duration(microseconds: 1000), () {
                          Navigator.pushNamed(context, '/$e');
                        });
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }

// FutureBuilder<bool?> buildBackgrounVideo() {
//   return FutureBuilder<bool?>(
//       future: started(),
//       builder: (context, snapshot) {
//         if(snapshot.hasData){
//         if (snapshot.data!) {
//           return SizedBox.expand(
//             child: FittedBox(
//               fit: BoxFit.cover,
//               child: SizedBox(
//                 width: _controller.value.size.width,
//                 height: _controller.value.size.height,
//                 child: VideoPlayer(_controller),
//               ),
//             ),
//           );
//         } else {
//           return Container();
//         }
//   }else {
//           return Container();
//         }
//       });
// }
}

class NavButton extends StatefulWidget {
  final String text;
  final VoidCallback function;

  const NavButton({Key? key, required this.text, required this.function})
      : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color(0xff1a98ee),
      onTap: widget.function,
      child: Padding(
        padding: const EdgeInsets.only(right: 25),
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
          fontSize: 23, fontWeight: FontWeight.w400, color: Colors.white70),
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
