import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappclone/societyScreen/creation_community.dart';
import '../help/constants.dart';

class SocietyPage extends StatelessWidget {
  const SocietyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Center(
          child: Container(
            height: height * 0.3,
            width: width * 0.5,
            child: Image.asset('assets/images/society.png'),
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: Text('Introducing Communities',
              style: textStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.black)),
        ),
        const SizedBox(height: 10),
        Text(
          'Convenient organization of related groups\n and distribution of announcements.  Now your communities (community of neighbors, \nschool, etc.) will have their own \n virtual space.',
          textAlign: TextAlign.center,
          style: textStyle.copyWith(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.grey)
        ),
        const SizedBox(height: 38),
        Container(
          height: height * 0.055,
          width: width * 0.7,
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: MaterialButton(
            onPressed: () {
              Get.to(const CreateCommunityPage(),
                  duration: Duration(seconds: 1),
                  transition: Transition.fadeIn);
            },
            child: Text(
              'Start your community',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
