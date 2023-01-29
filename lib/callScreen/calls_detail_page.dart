import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:whatsappclone/data/call_people_data.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key,required this.people}) : super(key: key);

  final People people;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          actions: [
            const IconButton(onPressed: null, icon: Icon(Icons.message,color: Colors.white,)),
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: PopupMenuButton(
                itemBuilder: (context) => [
                  const PopupMenuItem(
                  height:30,

                    value: 'Settings',
                    child: Text('Delete from call list'),

                  ),

                ],
                // onSelected: (){},

              ),
            ),


          ],

          backgroundColor: greenColor,
          title: Text('Details of call',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.white,

            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),

          ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(people.image),
            ),
            title: Text(people.name,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,

              ),
              textAlign: TextAlign.left,
            ),
            trailing: Wrap(
              spacing: 27,
              children: [
                Icon(Icons.call,color: greenColor),

                Icon(Icons.videocam,color: greenColor),
              ],
            ),
          ),
          Divider(
            indent: 103,

            thickness: 2,
            color: Colors.grey[200],

          ),
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(people.day,
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,

              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 36),
            child: ListTile(
              leading: people.iconstateofcall,
              subtitle: Text(getTime(people.date),
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,

                ),
                textAlign: TextAlign.left,
              ),


              title: Text(people.stateOfCall,
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


String getTime(String str){
  int len = str.length;
  str = str.substring(len-5,len);



  return str;




}

