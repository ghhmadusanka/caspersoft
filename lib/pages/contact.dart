import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_button.dart';
import '../widgets/custome_text_form_field.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {

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
                    height: 43,
                  ),
                  Text(
                    "Feel Free to contact us anytime!",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white70,
                        fontWeight: FontWeight.w100),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Get in Touch with",
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "CasperSoft",
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        color: const Color(0xff009e66),
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  MediaQuery.of(context).size.width > 1000?Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MessageMe(),
                      SizedBox(width: 50,),
                      ContactDetails()
                    ],
                  ):
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MessageMe(),
                      SizedBox(width: 40,),
                      ContactDetails()
                    ],
                  ),
                ],
              ),
            ),
          ),Align(
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


class MessageMe extends StatefulWidget {
  const MessageMe({Key? key}) : super(key: key);

  @override
  State<MessageMe> createState() => _MessageMeState();
}

class _MessageMeState extends State<MessageMe> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      width: MediaQuery.of(context).size.width > 1000
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Message us',
            style: GoogleFonts.poppins(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              Expanded(child: CustomTextFormField(hint: 'Name')),
              SizedBox(
                width: 25,
              ),
              Expanded(child: CustomTextFormField(hint: 'Email')),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
              height: 50,
              child: CustomTextFormField(
                hint: 'Subject',
                max: 20,
              )),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 200,
            child: CustomTextFormField(
              hint: "Message",
              max: 25,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(lable: 'Send Message', callback: () {})
        ],
      ),
    );
  }
}

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 550,
        width: MediaQuery.of(context).size.width > 1000
            ? MediaQuery.of(context).size.width * 0.4
            : MediaQuery.of(context).size.width * 0.75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
            'Contact Info',
            style: GoogleFonts.poppins(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'We are prepared to provide an amazing solution whenever the proper challenge arises. Contact us whenever you want!',
            style: GoogleFonts.poppins(
                fontSize: 15, color: Colors.white70, fontWeight: FontWeight.w400),
          ),
              const SizedBox(height: 15,),
              const ContactCard(icon: Icons.store_mall_directory_outlined, header: '<C/S>', content: 'CasperSoft'),
              const ContactCard(icon: Icons.person_pin_rounded, header: 'Proprietor', content: 'G H H Madusanka'),
              const ContactCard(icon: Icons.location_on_rounded, header: 'Location', content: 'Gampaha'),
              const ContactCard(icon: Icons.call, header: 'Call Us', content: '770072209 / 784973126'),
              const ContactCard(icon: Icons.alternate_email, header: 'Email Us', content: 'hashan@caspersoft.info'),
        ]));
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String header;
  final String content;
  const ContactCard({Key? key, required this.icon, required this.header, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: MediaQuery.of(context).size.width > 1000
        ? MediaQuery.of(context).size.width * 0.4
        : MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,size: 35,color: const Color(0xff009e66),),
          const SizedBox(width: 20,),
          Container(
            width: 3,
            color: const Color(0xff009e66),
          ),
          const SizedBox(width: 25,),
          SizedBox(
            width: MediaQuery.of(context).size.width > 1000
                ? MediaQuery.of(context).size.width * 0.2
                : MediaQuery.of(context).size.width * 0.5-8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(header,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),),
                Text(content,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white70),),
              ],
            ),
          )
        ],
      ),

    );
  }
}

class ContactCard2 extends StatelessWidget {
  final IconData icon;
  final String header;
  final String content;
  const ContactCard2({Key? key, required this.icon, required this.header, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,size: 30,color: const Color(0xff009e66),),
          const SizedBox(width: 14,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(header,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.white),),
              Text(content,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white70),),
            ],
          ),
          const SizedBox(width: 10,),
        ],
      ),

    );
  }
}

