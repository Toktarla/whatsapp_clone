import 'package:flutter/material.dart';
import 'package:whatsappclone/help/constants.dart';

class People{
  People({ required this.image,required this.date, required this.name, required this.trailing,required this.day,required this.stateOfCall,required this.iconstateofcall});

   String image="",name="",date="",day="";
   Icon trailing=const Icon(Icons.dark_mode);
   String stateOfCall = 'Missed';
   Icon iconstateofcall= const Icon(Icons.phone_missed_sharp);







}

List<People> people = [
  People(
    image: "https://wallpapercave.com/wp/wp8943949.png",
    name: "Nico Robin",
    date: "Today, 23:16",
    day:"Today",
    trailing: Icon(Icons.videocam,color: greenColor,),
      stateOfCall: 'Missed',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.red,),




  ),
  People(
    image: "https://pbs.twimg.com/media/Dwqkt2UWsAcy4cX?format=jpg&name=large",
    name: "Monkey D Luffy",
    date: "Today, 21:39",
    day:"Today",
    trailing: Icon(Icons.call,color: greenColor),
    stateOfCall: 'Incoming',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.green,),


  ),
  People(
    image: "https://i.pinimg.com/originals/5b/68/48/5b6848112c0e1cd7edc1776e101360c0.jpg",
    name: "Roronoa Zoro",
    date: "(3) Yesterday, 22:43",
    day:"Yesterday",
    trailing: Icon(Icons.call,color: greenColor),
    stateOfCall: 'Missed',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.red,),


  ),
  People(
    image: "https://pbs.twimg.com/media/FGAnGCcXwAcPjmY.jpg",
    name: 'Nami Swan',
    date: "(100) Yesterday, 20:38",
    day:"Yesterday",
    trailing: Icon(Icons.call,color: greenColor),
    stateOfCall: 'Incoming',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.green,),


  ),
  People(
    image: "https://pbs.twimg.com/media/D8aIwp-XoAIzyu0.jpg",
    name: "Chopper",
    date: "(2) 3 January, 18:06",
    day:"3 January",
    trailing: Icon(Icons.videocam,color: greenColor),
    stateOfCall: 'Missed',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.red,),


  ),
  People(
    image: "https://i.pinimg.com/736x/ec/cb/9e/eccb9ee2f27346ebc4bdc8e9db708f07.jpg",
    name: "Vinsmoke Sanji",
    date: "3 January, 17:06",
    day:"3 January",
    trailing: Icon(Icons.call,color: greenColor),
    stateOfCall: 'Incoming',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.green,),


  ),
  People(
    image: "https://adonius.club/uploads/posts/2022-02/1645813511_37-adonius-club-p-bruk-art-58.jpg",
    name: "Skeleton Brook",
    date: "2 January, 16:01",
    day:"2 January",
    trailing: Icon(Icons.videocam,color: greenColor),
    stateOfCall: 'Missed',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.red,),


  ),
  People(
    image: "https://pbs.twimg.com/media/FbPM00FXwAIdjaB?format=jpg&name=large",
    name: "Usopp",
    date: "(4) 1 January, 15:05",
    day:"1 January",
    trailing: Icon(Icons.call,color: greenColor),
    stateOfCall: 'Incoming',
    iconstateofcall: const Icon(Icons.call_missed_outgoing,color: Colors.green,),


  ),






];