import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsappclone/help/constants.dart';

class CreateCallLinkPage extends StatelessWidget {
  const CreateCallLinkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: greenColor,
          title: Text('Create call link',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white,

            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Text('Any WhatsApp user can join the call using\nthis link.Share it only with people you trust.\nMy aim is to be Flutter Junior Developer and I will\ntry',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,

              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(height: 25,),



          ListTile(
            leading: Container(
              margin: const EdgeInsets.only(left: 20),
              height: height*0.35,
              width: width*0.12,

              decoration: BoxDecoration(

                color: greenColor,
                shape: BoxShape.circle,

              ),
              child: const Icon(Icons.videocam,color: Colors.white,size: 27,),
            ),

            title: InkWell(
              onTap: (){
                final Uri url = Uri.parse('https://www.instagram.com/watashiwatoktarla_/');
                launchUrl(url);
              },
              child: Text('https://call.whatsapp.com/video/qdnXAC3uJu6Kxemo5Xtxul',

                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.blue,

                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(height: 12,),
          Container(
            margin: const EdgeInsets.only(left: 85),
            child: ListTile(


              title: Text('Type of call',

                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,

                ),
              ),
              subtitle: Text('Video',

                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.grey[500],

                ),
              ),
            ),
          ),
          const SizedBox(height: 12,),
          Divider(
            thickness: 2,
            color: Colors.grey[200],

          ),
          Container(
            margin: const EdgeInsets.only(left: 35),
            child: ListTile(
              leading: const Icon(Icons.send),

              title: Text('Send link via WhatsApp',

                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,

                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35),
            child: ListTile(
              leading: const Icon(Icons.copy),

              title: Text('Copy link',

                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,

                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35),
            child: ListTile(
              leading: const Icon(Icons.share ),

              title: Text('Send link via WhatsApp',

                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black,

                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),



        ],
      ),

    );
  }
}
