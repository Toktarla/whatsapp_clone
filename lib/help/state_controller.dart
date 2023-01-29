import 'package:flutter/material.dart';

class StateController extends ChangeNotifier{

   int count=0;
  bool isSelected = false;
  int indexOfTab=0;
  bool isChanged = true;

  void plusOne(){

    notifyListeners();
  }

  void onChanged(bool newValue){
    isChanged = newValue;



     notifyListeners();
   }




}
