import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../widgets/logo.dart';
import 'about.dart';
import 'contact.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  late VideoPlayerController _controller;
  double height = 0;
  double width = 0;

  List<String> navItems = ['About', 'Blog', 'Contact'];
  List<String> techList = [
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2FGoogle-flutter-logo.png?alt=media&token=e07e2244-3c05-47a2-b82d-3b0641104127',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Fgoogle-cloud-logo-1.png?alt=media&token=7530f87e-e194-474f-a715-f2b659cd35a8',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Flogo-standard.png?alt=media&token=d0c51068-ca4d-4c18-92d6-b2e181387c98',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Fnodejs.png?alt=media&token=f9844fd1-998f-406f-8f9a-510f4c1aa486',
    //'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Ffile-app-store-ios-custom-size-18.png?alt=media&token=55d3f1bd-c249-4d25-8c98-421260e88571',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Ficon1.png?alt=media&token=4ca521ac-6340-4b70-9350-5b352478a489',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2FAndroid-Logo-Transparent-PNG.png?alt=media&token=f2af394a-8b4e-427f-aaf5-45d1813e6e27',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Ficon8.png?alt=media&token=09d43f92-17b3-4b93-b05a-3f0326f84351',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Fasp-net-core-logo.png?alt=media&token=00b21ebd-b1c1-49be-b3fc-c4a7395b33fa',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Fmeta-logo.png?alt=media&token=14727622-f2e9-464b-877e-97eab84a3dd7',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Fmysql_PNG35.png?alt=media&token=97508897-1a53-4cb8-a2cc-5a120358b394',
    'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/tech%2Fmicrosoft-sql-server-logo-vector.svg?alt=media&token=cf9a5c0d-8fa6-4fc3-9379-235318c0ab82',
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/PoorSpottedDuiker%20(1).mp4?alt=media&token=ad2f3e74-75d8-4671-866f-a77ec06c5d45',
    );
  }

  Future<bool?> started() async {
    if(!_controller.value.isInitialized) {
      await _controller.initialize();
      _controller.setVolume(0);
      await _controller.play();
      await _controller.setLooping(true);
    }
    return _controller.value.isInitialized;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_controller.value.size);
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: Stack(
        children: [
          buildBackgrounVideo(),
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
                      child: AutoSizeText(
                        "CasperSoft",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: AutoSizeText(
                        "Enterprise . Mobility . Cloud",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.white70),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Apps for ",
                            style: GoogleFonts.poppins(
                                fontSize: 23,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70)),
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
                              Text("ලංකා",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      //return Image.network(color:Colors.white70,techList[index],fit: BoxFit.scaleDown,);
                      // MediaQuery.of(context).size.width > 990
                      //     ? buildTechno()
                      //     : const Spacer(),
                      const Spacer(),
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
          const Divider(
            thickness: 2,
            color: Color(0xff009e66),
          ),
          Container(
            color: Colors.black54,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // MediaQuery.of(context).size.width < 990
                //     ? Row(
                //         children: [
                //           buildTechno(),
                //         ],
                //       )
                //     : Container(),
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
                      sizes: 'col-sm-6 col-md-6 col-lg-3 col-xs-12',
                      child: const ContactCard2(
                          icon: Icons.call,
                          header: 'Call Us',
                          content: '770072209 / 784973126'),
                    ),
                    BootstrapCol(
                      sizes: 'col-sm-6 col-md-6 col-lg-3 col-xs-12',
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
                itemCount: techList.length - 1,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Image.network(
                    height: 80,
                    width: 80,
                    techList[itemIndex],
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
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Logo(
              fontsize: 31,
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

  FutureBuilder<bool?> buildBackgrounVideo() {
    return FutureBuilder<bool?>(
        future: started(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
          if (snapshot.data!) {
            return SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            );
          } else {
            return Container();
          }
    }else {
            return Container();
          }
        });
  }
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
      splashColor: const Color(0xff009e66),
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
