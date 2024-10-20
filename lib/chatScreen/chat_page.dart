import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/chatScreen/archive_page.dart';
import 'package:whatsappclone/chatScreen/chat_screen.dart';
import 'package:whatsappclone/help/constants.dart';

import '../data/chat_people_list.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var providerVariable = Provider.of<StateController>(context);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            color: Colors.transparent,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 0
              ),

              onPressed: (){
                Get.to(() => const ArchivePage());
                },
              child: ListTile(
                leading: Icon(
                  Icons.archive_outlined,
                  color: greenColor,
                ),
                title: Text(
                  'In archive',
                  style: textStyle.copyWith(fontSize: 17,fontWeight: FontWeight.w400)
                ),
              ),
            ),
          ),

          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: chat_people.length,
            itemBuilder: (context, index) {
              if(index==5 || index==8){
                return RawMaterialButton(
                  onPressed: (){
                    Get.to(() => ChatScreen(message: chat_people[index].message,image: chat_people[index].image,name: chat_people[index].name,));
                  },
                  child: ListTile(
                      trailing: Text(
                        chat_people[index].date,
                        style: textStyle.copyWith(fontSize:14,fontWeight: FontWeight.w600,color: Colors.grey[500])
                      ),
                      title: Text(
                        chat_people[index].name,
                        style: textStyle.copyWith(fontSize:18,fontWeight: FontWeight.w600)
                      ),
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: CachedNetworkImageProvider(
                          chat_people[index].image,
                        ),

                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.blue[500],
                            size: 18,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            chat_people[index].subtitleText,
                            style:textStyle.copyWith(fontSize:13,fontWeight: FontWeight.w600,color: Colors.grey[500])
                          ),
                        ],
                      )),
                );
              }
              else if (index % 3 == 0) {
                return RawMaterialButton(
                  onPressed: (){
                    Get.to(()=>ChatScreen(message: chat_people[index].message, image: chat_people[index].image,name: chat_people[index].name,));
                  },
                  child: ListTile(
                      trailing: Text(
                        chat_people[index].date,
                        style: textStyle.copyWith(fontSize:14,fontWeight: FontWeight.w600,color: Colors.grey[500])
                      ),
                      title: Text(
                        chat_people[index].name,
                        style:textStyle.copyWith(fontSize:18,fontWeight: FontWeight.w600)

                      ),
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundImage: CachedNetworkImageProvider(
                          chat_people[index].image,
                        ),
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
                            chat_people[index].subtitleText,
                            style:textStyle.copyWith(fontSize:13,fontWeight: FontWeight.w600,color: Colors.grey[500])

                          ),
                        ],
                      )),
                );
              } else if (index == 1) {
                return RawMaterialButton(
                  onPressed: (){
                    Get.to(()=>ChatScreen(message: chat_people[index].message,image: chat_people[index].image,name: chat_people[index].name,));
                  },
                  child: ListTile(
                    trailing: Column(
                      children: [
                        const SizedBox(height: 6,),
                        Text(
                          '00:15',
                            style:
                            textStyle.copyWith(fontSize:14,fontWeight: FontWeight.w600,color: Colors.grey[500])
                        ),
                        const SizedBox(height: 3.5,),
                        const Icon(Icons.volume_off,size: 18,)
                      ],
                    ),
                    title: Text(
                      '🎓👨‍🎓',
                      style: textStyle.copyWith(fontSize:18,fontWeight: FontWeight.w600)
                    ),
                    leading: const CircleAvatar(
                      radius: 24,
                      backgroundImage:  CachedNetworkImageProvider(
                        'https://i.pinimg.com/736x/b7/5b/29/b75b29441bbd967deda4365441497221.jpg',
                      ),


                    ),
                    subtitle: Text(
                      'Mikasa Ackermann: I love Eren<3',
                        style: textStyle.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.grey[500])

                    ),
                  ),
                );
              } else {
                return RawMaterialButton(
                  onPressed: (){
                    Get.to(()=>ChatScreen(message: chat_people[index].message,image: chat_people[index].image,name: chat_people[index].name,));
                  },
                  child: ListTile(
                    trailing: Text(
                      chat_people[index].date,
                        style: textStyle.copyWith(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.grey[500])

                    ),
                    title: Text(
                      chat_people[index].name,
                      style: textStyle.copyWith(fontSize: 18,fontWeight: FontWeight.w600)
                    ),
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: CachedNetworkImageProvider(
                        chat_people[index].image,
                      ),
                    ),
                    subtitle: Text(
                      chat_people[index].subtitleText,
                      style: textStyle.copyWith(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.grey[600])
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
