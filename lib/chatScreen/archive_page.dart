import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:whatsappclone/help/state_controller.dart';

class ArchivePage extends StatefulWidget {
  const ArchivePage({Key? key}) : super(key: key);

  @override
  State<ArchivePage> createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  bool isTurned = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          var prodiver = Provider.of<StateController>(context);
                          return Scaffold(


                            appBar: AppBar(
                              backgroundColor: greenColor,
                              title: Text('Archive Settings',
                                style: GoogleFonts.openSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,


                                ),
                              ),

                            ),
                            body: Row(


                              children: [
                                Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Keep chats archived',
                                        style: GoogleFonts.openSans(

                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,



                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text('Archived chats will remain archived\nwhen you receive a new message',
                                        style: GoogleFonts.openSans(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,


                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Switch(

                                  activeColor: greenColor,
                                  value: prodiver.isChanged,
                                  onChanged: (bool value) {
                                  prodiver.onChanged(value);

                                }, )





                              ],
                            ),


                          );
                        }));
                      },


                      child: const Text('Archive settings')),
                  value: 'Archive settings',

                ),
              ],
              // onSelected: (){},
            ),
          ),
        ],
        title: Text(
          'In archive',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Text(
            'These chats will remain in the archive when new messages are received. Click to change.',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(height: 10,),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[200],
          ),
          ListTile(
          trailing: Container(
            width: 65,
            child: Column(
              children: [
                const SizedBox(height: 8,),
                Text(
                  'Yesterday',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          title: Text(
            'Asuna Yuuki',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          leading: const CircleAvatar(
            radius: 24,
            backgroundImage: CachedNetworkImageProvider('https://static4.wikia.nocookie.net/__cb20130811184232/swordartonline/images/8/88/Asuna_SAO.png')
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.grey[500],
                size: 18,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                'You: I wanna be Flutter Developer',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: Colors.grey[500],
                ),
              ),
            ],
          )),

          ListTile(
              trailing: Container(
                width: 65,
                child: Column(
                  children: [
                    const SizedBox(height: 8,),
                    Text(
                      '19.11.2022',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              title: Text(
                'Vermeil',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              leading: const CircleAvatar(
                radius: 24,
                backgroundImage: CachedNetworkImageProvider('https://images3.alphacoders.com/126/thumb-1920-1264252.png'),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.grey[500],
                    size: 18,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'You: I wanna be Flutter Developer',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              )),


          const SizedBox(height: 8,),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[200],
          ),
          const SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock,color: Colors.grey[500],size: 13,),
              const SizedBox(width: 25,),
              RichText(
                text: TextSpan(
                  text: 'Your private messages are ',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                  children: const <TextSpan>[
                    TextSpan(text: 'end-to-end encrypted', style: TextStyle(color: Colors.green)),
                  ],
                ),
              )



            ],
          ),

        ],
      ),
    );
  }
}
