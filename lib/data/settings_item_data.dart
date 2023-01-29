import 'package:flutter/material.dart';


class SettingsItems{
  final String title , subtitle;
  final Icon icon;
  SettingsItems({ required this.title, required this.subtitle, required this.icon});





}

List<SettingsItems> settingItems = [
  SettingsItems(
    title: 'Account',
    subtitle: "Security notifications, change number",
    icon: Icon(Icons.key),




  ),
  SettingsItems(
    title: 'Privacy',
    subtitle: "Block contacts, disappearing messages",
    icon: Icon(Icons.lock),




  ),
  SettingsItems(
    title: 'Avatar',
    subtitle: "Create, edit, profile photo",
    icon: Icon(Icons.person),




  ),
  SettingsItems(
    title: 'Chats',
    subtitle: "Theme, wallpapers, chat history",
    icon: Icon(Icons.message_rounded),




  ),
  SettingsItems(
    title: 'Notifications',
    subtitle: "Message, group & call tones",
    icon: Icon(Icons.notifications),




  ),
  SettingsItems(
    title: 'Storage and data',
    subtitle: "Network usage, auto-download",
    icon: Icon(Icons.storage),




  ),
  SettingsItems(
    title: 'App language',
    subtitle: "English",
    icon: Icon(Icons.language),




  ),SettingsItems(
    title: 'Help',
    subtitle: "Help centre, contact us,privacy policy",
    icon: Icon(Icons.help),




  ),SettingsItems(
    title: 'Invite a friend',
    subtitle: "",
    icon: Icon(Icons.people),




  ),







];