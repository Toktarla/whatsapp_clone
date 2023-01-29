import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:whatsappclone/chatScreen/message_class.dart';

class ChatScreen extends StatefulWidget {
    ChatScreen({Key? key,required this.message,required this.image,required this.name,  this.lastOnline}) : super(key: key);
   final List<Message> message;
   final String image ;
   final String name;
    String? lastOnline ;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [
    Message(
      text: 'text0',
      date: DateTime.now().subtract(const Duration(days: 2,minutes: 5)),
      isSentByMe: false,
    ),
    Message(
        text: 'text1',
        date: DateTime.now().subtract(const Duration(minutes: 2,days: 2)),
        isSentByMe: true
    ),
    Message(
        text: 'text2',
        date: DateTime.now().subtract(const Duration(days: 3,minutes: 5)),
        isSentByMe: false
    ),
    Message(
        text: 'text3',
        date: DateTime.now().subtract(const Duration(days: 1,minutes: 2)),
        isSentByMe: true
    ),
    Message(
        text: 'text4',
        date: DateTime.now().subtract(const Duration(days: 2,minutes: 2)),
        isSentByMe: false
    ),
    Message(
        text: 'text5',
        date: DateTime.now().subtract(const Duration(days: 3,minutes: 3)),
        isSentByMe: true
    ),
    Message(
        text: 'text6',
        date: DateTime.now().subtract(const Duration(days: 4,minutes: 1)),
        isSentByMe: false
    ),
    Message(
        text: 'text7',
        date: DateTime.now().subtract(const Duration(days: 2,minutes: 4)),
        isSentByMe: true
    ),
    Message(
        text: 'text8',
        date: DateTime.now().subtract(const Duration(days:4,minutes: 1)),
        isSentByMe: false
    ),
    Message(
        text: 'text9',
        date: DateTime.now().subtract(const Duration(minutes: 3,days: 5)),
        isSentByMe: true
    ),



  ].reversed.toList();

  final TextEditingController _controller = TextEditingController();




  @override
  Widget build(BuildContext context) {




    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(

        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          leadingWidth: 20,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),

          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(backgroundImage: NetworkImage(widget.image),),
              SizedBox(width: 10,),
              Text(widget.name,style: const TextStyle(
                color: Colors.white,
                fontSize: 14,

              ),),
            ],
          ),
          actions: [
            IconButton(onPressed: (){

            }, icon: const Icon(Icons.videocam,color: Colors.white,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.white,)),



            Container(
              margin: const EdgeInsets.only(right: 5),

              child: PopupMenuButton(

                itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text('View contact'),
                  ),
                  const PopupMenuItem(
                    child: Text('Media, links, and docs'),
                  ),
                  const PopupMenuItem(
                    child: Text('Search'),
                  ),
                  const PopupMenuItem(
                    child: Text('Mute notifications'),
                  ),
                  const PopupMenuItem(
                    child: Text('Disappearing messages'),
                  ),
                  const PopupMenuItem(
                    child: Text('Wallpaper'),
                  ),
                  const PopupMenuItem(
                    child: Text('More'),
                  ),

                ],
                // onSelected: (){},

              ),
            ),





          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://cdn.wallpapersafari.com/54/0/HluF7g.jpg'),
              fit: BoxFit.fill,
            )
          ),
          child: Column(
            children: [




              Expanded(
                child: GroupedListView<Message,DateTime>(

                  reverse: true,
                  order:GroupedListOrder.DESC,
                  padding: const EdgeInsets.all(8),
                  floatingHeader: true,
                  useStickyGroupSeparators: true,
                  elements: widget.message,




                  groupBy: (message)=> DateTime(
                    message.date.year,
                    message.date.month,
                    message.date.day,
                  ),
                  groupHeaderBuilder: (Message message) => SizedBox(
                    height: 40,

                    child: Center(
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            DateFormat.yMMMd().format(message.date),

                            style: TextStyle(color: Colors.grey[500],fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),


                  itemBuilder: (context,Message message) => Align(
                    alignment: message.isSentByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: message.isSentByMe
                            ? Color.fromRGBO(217, 253, 211, 1)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),



                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(message.text),

                      ),
                    ),
                  ),


                ),
              ),


              Row(
                children: [
                  const SizedBox(width: 6,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,

                    ),
                    child: TextField(



                      controller: _controller,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.emoji_emotions_outlined),
                        suffixIcon: Icon(Icons.camera_alt),


                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Message',
                      ),

                      onSubmitted: (text){
                        final message = Message(
                            text: text,
                            date: DateTime.now(),
                            isSentByMe: true
                        );

                        setState(() {

                          widget.message.add(message);

                          _controller.clear();

                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 7,),

                  Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: greenColor,

                    ),
                    child: const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child:  Icon(Icons.mic,color: Colors.white,),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),


      ),
    );
  }
}







