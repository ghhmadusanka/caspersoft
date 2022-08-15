import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:caspersoft/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';


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

          const SingleChildScrollView(
            child: AboutBody(isAbout: true,),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(icon: Icon(Icons.close,color: Colors.white,),onPressed: (){
              Navigator.pop(context);
            },),
          )
        ],
      ),
    );
  }
}

class AboutBody extends StatelessWidget {
  final bool isAbout;
  const AboutBody({
    Key? key, required this.isAbout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 500,
            child: TextRenderer(
              text:'Leverage our expertise in custom software development to unlock your true potential and gear up your digital transformation.',
              child: AutoSizeText(
                textAlign: TextAlign.center,
                'Leverage our expertise in custom software development to unlock your true potential and gear up your digital transformation.',
                maxLines: 3,
                style: GoogleFonts.poppins(
                    fontSize: isAbout?15 : 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          isAbout?
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
          ):Container(),
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
                  child: const ImageRenderer(
                    alt: "caspersoft",
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/mvp.webp?alt=media&token=8d458cbb-8795-43b5-a84f-a3cf2197342b'),
                    ),
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
                          backgroundColor:Colors.white,
                          radius: MediaQuery.of(context).size.width <
                                  992
                              ? MediaQuery.of(context).size.width * 0.2
                              : 180,
                          child:  const ClipOval(
                            child: ImageRenderer(
                              alt: 'Caspersoft Logo',
                              child: Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Image(fit: BoxFit.cover,image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/caspersoft.appspot.com/o/lg.png?alt=media&token=de4aa1c8-8fea-403c-8262-f573b68822fe'
                                ),),
                              ),
                            ),
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
                              TextRenderer(
                                child: Text(
                                  "What is CasperSoft?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 28,
                                      color: MediaQuery.of(context)
                                                  .size
                                                  .width <
                                              992
                                          ? const Color(0xff1a98ee)
                                          : const Color(0xff39a5ff),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              TextRenderer(
                                text: 'We collaborate with prospective companies to create unique enterprise apps and mobile platforms that may guarantee success in the constantly evolving tech industry. We use our in-depth understanding of the sector and technological prowess to help businesses make the most of emerging technology from conception to creation.',
                                child: AutoSizeText(
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
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextRenderer(
                                child: Text(
                                  "What We Actually Do?",
                                  style: GoogleFonts.poppins(
                                      fontSize: 28,
                                      color: MediaQuery.of(context)
                                                  .size
                                                  .width <
                                              992
                                          ? const Color(0xff1a98ee)
                                          : const Color(0xff39a5ff),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const MyBuildAnimatedText(),
                              const SizedBox(
                                height: 6,
                              ),
                              TextRenderer(
                                text: 'As a Flutter app development company, we specialize in solutions for iOS and Android applications. New powerful cross-platform native-like mobile apps are time and cost efficient solutions to help your business grow.',
                                child: AutoSizeText(
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
                              ),
                            ],
                          ),
                        )),
                  ]),
            ],
          ),
          isAbout? Services(isAbout: isAbout,):Container()
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  final bool isAbout;
  const Services({
    Key? key, required this.isAbout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40,),
        SizedBox(
          width: 500,
          child: AutoSizeText(
            textAlign: TextAlign.center,
            'Receive web and mobile development services in one place',
            maxLines: 3,
            style: GoogleFonts.poppins(
                fontSize: isAbout?15 : 18,
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
              'Our Services',
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
        BootstrapRow( children: [
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
                icon: Fontisto.webpack,
                header: "Web Development Services",
                content:
                    'Increase the profitability, availability, and efficiency of your business via the relevant web development solutions with the scalable architecture using the latest technologies and trends',
              )),
          BootstrapCol(
              sizes: 'col-md-12 col-sm-12 col-lg-6',
              child: const ServiceCard(
                icon: Entypo.tablet_mobile_combo,
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
                icon: AntDesign.customerservice,
                header: "Support & Maintenance",
                content:
                    'Leave your site/app in our care and we will make sure they run smoothly and efficiently at any time. We will prevent/resolve technical issues while you are focused on your clients’ needs.',
              )),BootstrapCol(
              sizes: 'col-md-12 col-sm-12 col-lg-6',
              child: const ServiceCard(
                icon: Ionicons.analytics_outline,
                header: "Business Analysis",
                content:
                    'Discovery phase allows eliminating risks and defining functional & nonfunctional requirements.',
              )),
        ]),
      ],
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
          color: const Color(0xff0bc4c0),
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
      totalRepeatCount: 10,
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
