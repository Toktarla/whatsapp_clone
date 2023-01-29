import 'package:flutter/material.dart';
import 'package:whatsappclone/help/constants.dart';

import 'data/settings_item_data.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: greenColor,
        title: Text('Settings',style: textStyle.copyWith(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5,),
            ListTile(
              title: Text('Toktar',style: textStyle.copyWith(color: Colors.black),),
              subtitle: Text('In gym',style: textStyle.copyWith(color: Colors.black),),
              leading: const CircleAvatar(
                radius: 30,

                backgroundImage: NetworkImage(
                  'https://s2.best-wallpaper.net/wallpaper/2560x1920/2007/Dog-face-head-hazy-background_2560x1920.jpg'
                ),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.qr_code,color: greenColor,),
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
              height: 15,
            ),
            ListView.builder(
              padding: EdgeInsets.only(left: 15),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 9,

                itemBuilder: (context,index){
                  return ListTile(
                    leading: settingItems[index].icon,
                    title: Text(settingItems[index].title),
                    subtitle: Text(settingItems[index].subtitle),

                  );
                }
            ),




          ],
        ),
      ),
    );
  }
}
