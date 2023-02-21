import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/callScreen/callink_creation.dart';
import 'package:whatsappclone/callScreen/calls_detail_page.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:whatsappclone/data/call_people_data.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 7,
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => const CreateCallLinkPage());
          },
          child: ListTile(
              title: Text(
                'Create call link',
                style: textStyle.copyWith(fontSize: 17,fontWeight: FontWeight.w600)
              ),
              subtitle: Text(
                'Share with link in WhatsApp',
                  style: textStyle.copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.grey)
              ),
              leading: Container(
                height: height * 0.35,
                width: width * 0.12,
                decoration: BoxDecoration(
                  color: greenColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.share_rounded,
                  color: Colors.white,
                  size: 27,
                ),
              ),
            ),

        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Recent',
              style: textStyle.copyWith(color: Colors.grey[600],fontSize: 16,fontWeight: FontWeight.w500)
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return RawMaterialButton(
                  onPressed: () {
                    Get.to(() => DetailsPage(people: people[index]));
                  },
                  child: ListTile(
                    title: Text(
                      people[index].name,
                      style: textStyle.copyWith(fontSize: 17,fontWeight: FontWeight.w600)),
                    subtitle: Text(
                      people[index].date,
                        style: textStyle.copyWith(fontSize: 17,fontWeight: FontWeight.w400)
                    ),
                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        people[index].image,
                      ),
                    ),
                    trailing: IconButton(
                      icon: people[index].trailing,
                      onPressed: null,
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
