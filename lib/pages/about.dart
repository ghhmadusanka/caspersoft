import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:caspersoft/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/logo.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 500,
                    child: AutoSizeText(
                      textAlign: TextAlign.center,
                      'Leverage our expertise in custom software development to unlock your true potential and gear up your digital transformation.',
                      maxLines: 3,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white70,
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        'About Us',
                        style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer()
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.width < 992
                              ? MediaQuery.of(context).size.width * 0.41
                              : 380,
                          child: const Image(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(
                                'https://cdn-fjhgj.nitrocdn.com/JNHnnrtHgKEmbnxBwnbwTviIQRmtMCVm/assets/static/optimized/rev-84ca054/wp-content/uploads/2020/12/mvp.jpg'),
                          )),
                      BootstrapRow(
                          height: MediaQuery.of(context).size.width < 992
                              ? 600
                              : 380,
                          children: [
                            BootstrapCol(
                                child: const SizedBox(
                              height: 4,
                            )),
                            BootstrapCol(
                              fit: FlexFit.tight,
                                sizes: 'col-md-12 col-lg-4 col-sm-12',
                                child: CircleAvatar(
                                  radius: MediaQuery.of(context).size.width <
                                          992
                                      ? MediaQuery.of(context).size.width * 0.2
                                      : 180,
                                  child: const ClipOval(
                                    child: Image(fit: BoxFit.cover,image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/caspersoft%20logo%202.0.jpg?alt=media&token=36692d09-0ee5-4544-a3da-90fff639b8f6'
                                    ),),
                                  ),
                                )),
                            BootstrapCol(
                                sizes: 'col-md-12 col-lg-8 col-sm-12',
                                child: SizedBox(
                                  height: 380,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MediaQuery.of(context).size.width > 992
                                          ? Container()
                                          : const SizedBox(
                                              height: 35,
                                            ),
                                      Text(
                                        "What is CasperSoft?",
                                        style: GoogleFonts.poppins(
                                            fontSize: 28,
                                            color: MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    992
                                                ? const Color(0xff009e66)
                                                : const Color(0xff00d58a),
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      AutoSizeText(
                                        'We collaborate with prospective companies to create unique enterprise apps and mobile platforms that may guarantee success in the constantly evolving tech industry. We use our in-depth understanding of the sector and technological prowess to help businesses make the most of emerging technology from conception to creation.',
                                        maxLines: 4,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    992
                                                ? Colors.white70
                                                : Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "What We Actually Do?",
                                        style: GoogleFonts.poppins(
                                            fontSize: 28,
                                            color: MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    992
                                                ? const Color(0xff009e66)
                                                : const Color(0xff00d58a),
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      const MyBuildAnimatedText(),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      AutoSizeText(
                                        'As a Flutter app development company, we specialize in solutions for iOS and Android applications. New powerful cross-platform native-like mobile apps are time and cost efficient solutions to help your business grow.',
                                        maxLines: 4,
                                        style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            color: MediaQuery.of(context)
                                                        .size
                                                        .width <
                                                    992
                                                ? Colors.white70
                                                : Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                )),
                            BootstrapCol(
                                child: const Divider(
                              thickness: 2,
                              color: Color(0xff009e66),
                            )),
                          ]),
                    ],
                  ),
                  BootstrapRow(height: 300, children: [
                    BootstrapCol(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Receive web and mobile development services in one place",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.white70,
                              fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Our Services",
                          style: GoogleFonts.poppins(
                              fontSize: 28,
                              color: const Color(0xff009e66),
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                      ],
                    )),
                    BootstrapCol(
                        sizes: 'col-md-12 col-sm-12 col-lg-6',
                        child: const ServiceCard(
                          icon: Icons.flutter_dash,
                          header: "Cross-Platform Development Services",
                          content:
                              'From the idea conception to a market launch, we will support you on every stage and provide the best user experience for the end users.',
                        )),
                    BootstrapCol(
                        sizes: 'col-md-12 col-sm-12 col-lg-6',
                        child: const ServiceCard(
                          icon: Icons.web,
                          header: "Web Development Services",
                          content:
                              'Increase the profitability, availability, and efficiency of your business via the relevant web development solutions with the scalable architecture using the latest technologies and trends',
                        )),
                    BootstrapCol(
                        sizes: 'col-md-12 col-sm-12 col-lg-6',
                        child: const ServiceCard(
                          icon: Icons.mobile_friendly,
                          header: "Mobile Development Services",
                          content:
                              'For you, we develop native Android and iOS mobile apps. One of the leading mobile application development businesses offers you mobile development of any complexity to strengthen your business and boost client loyalty.',
                        )),
                    BootstrapCol(
                        sizes: 'col-md-12 col-sm-12 col-lg-6',
                        child: const ServiceCard(
                          icon: Icons.interests_outlined,
                          header: "UI/UX Design Services",
                          content:
                              'Maintain the aesthetic appeal of your company while reflecting your essential values to the public through genuine visual representation. Increase user loyalty and engagement with a unique UI/UX design that keeps users interested.',
                        )),
                    BootstrapCol(
                        sizes: 'col-md-12 col-sm-12 col-lg-6',
                        child: const ServiceCard(
                          icon: Icons.home_repair_service,
                          header: "Support & Maintenance",
                          content:
                              'Leave your site/app in our care and we will make sure they run smoothly and efficiently at any time. We will prevent/resolve technical issues while you are focused on your clients’ needs.',
                        ))
                  ])
                ],
              ),
            ),
          ),
        ],
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
          fontSize: 20,
          color: const Color(0xffbea500),
          fontWeight: FontWeight.w500),
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
      animatedTexts: [
        TyperAnimatedText(
          "Flutter App Development Services",
          speed: const Duration(milliseconds: 80),
        ),
        TyperAnimatedText(
          "Web Development Services",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "UI/UX Design Services",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Mobile Development Services",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Support & Maintenance",
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}
