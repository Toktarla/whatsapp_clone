import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:whatsappclone/help/state_controller.dart';
import 'home_page.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(


      providers: [
        ChangeNotifierProvider(create: (_)=>StateController(),)
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp Clone',
        theme: ThemeData(
          primaryColor: greenColor,

        ),


        home: const HomePage(),
      ),
    );
  }
}

