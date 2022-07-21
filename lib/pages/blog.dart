import 'package:caspersoft/widgets/blog_card.dart';
import 'package:caspersoft/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
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
                  Text(
                    'Check out our latest blog post',
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white70,
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      const Logo(fontsize: 40,),
                      Text(
                        'Blog',
                        style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer()
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width > 1300
                        ? MediaQuery.of(context).size.width * .65
                        : MediaQuery.of(context).size.width > 1200
                            ? MediaQuery.of(context).size.width * .75
                            : MediaQuery.of(context).size.width * .85,
                    child: BootstrapRow(
                      children: [
                        buildBootstrapCol(
                          imageUrl:
                              'https://www.i-scoop.eu/wp-content/uploads/2017/12/IoT-devices.jpg',
                          header:
                              "Know About the Latest Software Development Trends in 2022",
                          content:
                              "The advancement in technology has led to changes in the software industry. So businesses must keep up with the evolution in software development to stay competitive and to ensure the...",
                        ),
                        buildBootstrapCol(
                          imageUrl:
                              'https://www.simplilearn.com/ice9/free_resources_article_thumb/Data_Science_Software_Development.jpg',
                          header:
                              "Know the Benefits of Outsourcing Custom Software Development",
                          content:
                              "Custom software development service providers deliver software that are tailored to meet your business needs and streamline daily operations. Customized software’s bring efficiency to the industry and helps you",
                        ),
                        buildBootstrapCol(
                          imageUrl:
                              'https://www.genicsolutions.com/wp-content/uploads/2021/09/Software-Development-Company-Singapore.png',
                          header:
                              "What Are the Top Software Development Challenges and Solutions?",
                          content:
                              "The software industry is constantly growing and evolving which means you need to keep your software system updated for better functioning. A software system must be flexible, easy-to-use, and capable.",
                        ),
                        buildBootstrapCol(
                          imageUrl:
                              'https://sjorshooijen.io/wp-content/uploads/2016/12/sjorshooijen-firebase.jpg',
                          header:
                              "What Is Google Firebase and Why Should You Use It?",
                          content:
                              "Google Firebase offers many features that pitch it as the go-to backend development tool for web and mobile apps. Firebase is simple, lightweight, friendly, and industrially recognized",
                        ),
                        buildBootstrapCol(
                          imageUrl:
                              'https://lh3.googleusercontent.com/OUFNuVUMUQH1hs7KoralzegMxnkfLrjf9SKIt2AJa8V9Jz-_JD1Q8rCOtQML8KgLmi8fo4_XWCY--rt-bFW0G9D5kNBwdPa9xPpfvdARQ04rUDxAP6vE_q8_ijPVW4MF-23jd4O9',
                          header:
                              "What is Flutter? The Game Changer in Application Development",
                          content:
                              "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                        ),
                        buildBootstrapCol(
                          imageUrl:
                              'https://www.classicinformatics.com/hubfs/softwaress.png',
                          header:
                              "What is custom software development?",
                          content:
                              "Custom software development involves designing, developing, implementing, and maintaining software for a group of users, functions, or organizations. To ensure that all your unique needs and specifications are met, custom software...",
                        ),
                        buildBootstrapCol(
                          imageUrl:
                              'https://www.genicsolutions.com/wp-content/uploads/2021/12/Type-Software-Development-Sm-size-1.jpg',
                          header:
                              "Build Your Software and Make Your Processes Faster",
                          content:
                              "It is not just enough to manufacture quality products but it must reach the customer safely and on time. This is an important part of any company and that is...",
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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

  BootstrapCol buildBootstrapCol(
      {required String imageUrl,
      required String header,
      required String content}) {
    return BootstrapCol(
        fit: FlexFit.tight,
        sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
        child: BlogCard(
          imageUrl: imageUrl,
          header: header,
          content: content,
        ));
  }
}
