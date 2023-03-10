import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:whatsappclone/data/status_people_data.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var providerVariable = Provider.of<StateController>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 6),
          child: ListTile(
            leading: SizedBox(
              width: 45,
              child: Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      'https://rare-gallery.com/uploads/posts/821900-Ray-Wow-Dogs-Painting-Art-Glasses-Snout-Funny.jpg',
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                        color: greenColor,
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: const FittedBox(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              'My status',
              style: textStyle.copyWith(fontSize: 18,fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Press to add status',
              style: textStyle.copyWith(fontSize: 18,color: Colors.grey[400])
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 28),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Last',
              style: textStyle.copyWith(fontSize: 18,color: Colors.grey[600])
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.green, width: 2),
              ),
              child: const Padding(
                padding:  EdgeInsets.all(2.0),
                child:  CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    'https://i.pinimg.com/originals/01/88/ec/0188ec3975655cef4072f7591457822f.jpg',
                  ),
                ),
              ),
            ),
            title: Text(
              'Nino Nakano',
              style: textStyle.copyWith(fontSize: 18,color: Colors.grey[600])
            ),
            subtitle: Text(
              'Today, 15:35',
              style: textStyle.copyWith(fontSize: 18,color: Colors.grey[600])
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                    'https://pbs.twimg.com/media/EyiZNltXMAAeeg2.jpg',
                  ),
                ),
              ),
            ),
            title: Text(
              'Miku Nakano',
              style:textStyle.copyWith(fontSize: 18,color: Colors.grey[600])
            ),
            subtitle: Text(
              'Today, 15:35',
              style: textStyle.copyWith(fontSize: 18,color: Colors.grey[600])
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 28),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Seen',
              style: textStyle.copyWith(fontSize: 18,color: Colors.grey[600])
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.grey, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                                backgroundImage: CachedNetworkImageProvider(
                                    people[index].image)),
                          ),
                        ),
                        title: Text(
                          people[index].name,
                          style: textStyle.copyWith(fontSize: 18,)
                        ),
                        subtitle: Text(
                          people[index].date,
                          style:textStyle.copyWith(fontSize: 18,color: Colors.grey[600])
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 60,),
            Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                const Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Your status updates are ',
                  style: textStyle.copyWith(fontSize: 12,color: Colors.grey[600]),

                ),
                Text(
                  "end-to-end crypted",
                  style: textStyle.copyWith(fontSize: 12,color: Colors.green[600]),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
