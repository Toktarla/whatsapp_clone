import '../chatScreen/message_class.dart';

class ChatPeople{
  ChatPeople({required this.lastOnline, required this.image,required this.date, required this.name,required this.subtitleText,required this.message});

  String image="",name="",date="";
  String subtitleText = 'Subtitle Text';
  List<Message> message=[];
  String lastOnline = "";










}

List<ChatPeople> chat_people = [

  ChatPeople(

    image: "https://avatars.mds.yandex.net/i?id=d430c7802d36cccc3ac87bd52d1b413a09bae736-4902600-images-thumbs&n=13",
    name: "Marin Kitagawa",
    date: "23:16",
    subtitleText: 'Toktar',
    lastOnline:"online",
    message:[
      Message(
        text: 'marin i love you',
        date: DateTime.now().subtract(const Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'marin i love you',
          date: DateTime.now().subtract(const Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],

  ),
  ChatPeople(

      image: "https://i.pinimg.com/originals/13/c6/b9/13c6b9628ae14e52a15ea80dc11db4f3.png",
      name: "Shinobu Kochou",
      date: "23:14",
      subtitleText: 'Toktar is best',
    lastOnline:"online",

    message:[
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
    ],
  ),
  ChatPeople(

      image: "https://get.wallhere.com/photo/Sakurajima-Mai-Seishun-Buta-Yar-wa-Bunny-Girl-senpai-no-Yume-wo-Minai-anime-anime-girls-Anime-screenshot-2152065.jpg",
      name: "Mai Sakurajima🐰",
      date: "22:50",
      subtitleText: 'I love you Toktar',
    lastOnline:"last seen today at 19:58",

    message:[
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
    ],
  ),
  ChatPeople(
    lastOnline:"seen today at 20:08",


    image: "https://steamuserimages-a.akamaihd.net/ugc/968723577410073497/F794B3A74B2D4556D90B827AFFAF8489607A6707/?imw=512&amp;imh=307&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
      name: "Akeno Himejima😊💝",
      date: "21:21",
      subtitleText: 'Thank you!<3',
    message:[
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
    ],
  ),

  ChatPeople(
    lastOnline:"online",


    image: "https://i.pinimg.com/originals/c5/64/88/c5648818ff78fdb4e080e8f01f7f174a.jpg",
      name: "Albedo friend",
      date: "21:21",
      subtitleText: 'Assalaumaleikum',
    message:[
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
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
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
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(const Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),
  ChatPeople(
    lastOnline:"seen today at 10:51",


    image: "https://yt3.ggpht.com/ytc/AKedOLT5v8ASA09r8qD9l33Y2zBaaWxFCrWSLW-2eHDozA=s900-c-k-c0x00ffffff-no-rj",
      name: "Zero Two",
      date: "20:02",
      subtitleText: '0+2=love',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(const Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text2',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'text3',
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text4',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'text5',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),

  ChatPeople(
    lastOnline:"online",


    image: "https://otakukart.com/wp-content/uploads/2022/04/Yor.jpg",
      name: "Killer💝",
      date: "20:00",
      subtitleText: 'I am not killer , i am mother!',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(const  Duration(minutes: 2,days: 2)),
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
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(const Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),

  ChatPeople(
    lastOnline:"online",


    image: "https://static.zerochan.net/Makima.full.3164119.jpg",
      name: "Makima",
      date: "19:37",
      subtitleText: 'Frankly, I am kind and not liar',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text2',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'text3',
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text4',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'text5',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),
  ChatPeople(
    lastOnline:"online",


    image: "https://images6.alphacoders.com/112/thumb-1920-1127692.png",
      name: "Bestie Kurisu",
      date: "16:04",
      subtitleText: 'I fond of my hairs , wdy think?',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text2',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'text3',
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text4',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'text5',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),
  ChatPeople(
    lastOnline:"online",


    image: "https://i.pinimg.com/originals/e2/07/7f/e2077f4a90e437b36d0dd1e730b90d57.jpg",
      name: "Esdeath🥶🥶🥶",
      date: "15:15",
      subtitleText: 'How are you my king?',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text2',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'text3',
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text4',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'text5',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),
  ChatPeople(
    lastOnline:"online",


    image: "https://abrakadabra.fun/uploads/posts/2022-01/1642100176_30-abrakadabra-fun-p-kurume-ubiitsa-akame-63.jpg",
      name: "Blood Katana",
      date: "15:14",
      subtitleText: 'could you give your snap?',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text2',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'text3',
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text4',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'text5',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),
  ChatPeople(
    lastOnline:"online",


    image: "https://avatars.mds.yandex.net/i?id=14a7873b2242a787ed74fac8ad514e61cb68e75d-7761368-images-thumbs&n=13",
      name: "Rem💎",
      date: "10:52",
      subtitleText: 'I am ok , wdyd?!',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text2',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'text3',
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text4',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'text5',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),

  ChatPeople(
    lastOnline:"seen today at 20:51",


    image: "https://k32.kn3.net/taringa/7/1/3/2/9/9/1/tensahollow/D44.jpg",
      name: "Hancock",
      date: "Yesterday",
      subtitleText: 'Where is Luffy?',
    message:[
      Message(
        text: 'text0',
        date: DateTime.now().subtract(Duration(days: 2,minutes: 5)),
        isSentByMe: false,
      ),
      Message(
          text: 'text1',
          date: DateTime.now().subtract(Duration(minutes: 2,days: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text2',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 5)),
          isSentByMe: false
      ),
      Message(
          text: 'text3',
          date: DateTime.now().subtract(Duration(days: 1,minutes: 2)),
          isSentByMe: true
      ),
      Message(
          text: 'text4',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 2)),
          isSentByMe: false
      ),
      Message(
          text: 'text5',
          date: DateTime.now().subtract(Duration(days: 3,minutes: 3)),
          isSentByMe: true
      ),
      Message(
          text: 'text6',
          date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text7',
          date: DateTime.now().subtract(Duration(days: 2,minutes: 4)),
          isSentByMe: true
      ),
      Message(
          text: 'text8',
          date: DateTime.now().subtract(Duration(days:4,minutes: 1)),
          isSentByMe: false
      ),
      Message(
          text: 'text9',
          date: DateTime.now().subtract(Duration(minutes: 3,days: 5)),
          isSentByMe: true
      ),
    ],
  ),










];