import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whatsappclone/camera_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:whatsappclone/callScreen/call_page.dart';
import 'package:whatsappclone/chatScreen/chat_page.dart';
import 'package:whatsappclone/setting_page.dart';
import 'package:whatsappclone/societyScreen/society_page.dart';
import 'package:whatsappclone/statusScreen/status_page.dart';
import 'help/constants.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  late TabController _tabController;
  String selectedImagePath = '';
  int selectedIndex = 1;


  // final List<FloatingActionButton> fabs=[
  //    FloatingActionButton(child: new Icon(Icons.message),onPressed: (){},),
  //    FloatingActionButton(child: new Icon(Icons.camera_alt),onPressed: (){},),
  //    FloatingActionButton(child: new Icon(Icons.add_box),onPressed: (){},),
  //
  //    FloatingActionButton(child: new Icon(Icons.add_ic_call_rounded),onPressed: (){},),
  // ];


  @override
  void initState() {

    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
    @override
    Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
    // var providerVariable = Provider.of<StateController>(context);



      return Scaffold(
       appBar: AppBar(

        bottom: PreferredSize(
          preferredSize: Size(width,50),
          child: SizedBox(
            width: width,
            child: TabBar(
              onTap: (index){
                setState(() {

                  selectedIndex=index;
                });

              },
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3,




              controller: _tabController,
              tabs: [
                SizedBox(
                  width: width*0.1,
                  child: const Tab(

                    icon:  Icon(Icons.people_alt),
                  ),
                ),
                SizedBox(
                  width: width*0.2,

                  child: const Tab(
                    text: 'Chats',

                  ),
                ),
                SizedBox(
                  width: width*0.2,


                  child: const Tab(
                    text: 'Status',

                  ),
                ),
                SizedBox(
                  width: width*0.2,



                  child: const Tab(
                    text: 'Calls',

                  ),
                ),

              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Get.to(const CameraPage());

          }, icon: const Icon(Icons.camera_alt_outlined,color: Colors.white,)),
          const IconButton(onPressed: null, icon: Icon(Icons.search,color: Colors.white,)),



          Container(
            margin: const EdgeInsets.only(right: 5),
            child: PopupMenuButton(
              onSelected: (value){
                if(value == "item1"){
                  Get.to(()=> SettingsPage());
                }

              },

              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('Settings'),
                  value: "item1",

                ),

              ],
              // onSelected: (){},

            ),
          ),




        ],
        backgroundColor: greenColor,
        title: Text('WhatsApp',
            style: GoogleFonts.openSans(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
        ),



      ),

      body: TabBarView(
          controller: _tabController,
          children: const  [
             SocietyPage(),
             ChatsPage(),
             StatusPage(),
             CallPage(),
          ],


      ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: greenColor,
      onPressed: (){

      },
      child: const Icon(Icons.message_rounded,color: Colors.white,),
    ),
    );
  }
}
