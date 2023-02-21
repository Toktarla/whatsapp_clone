import 'package:flutter/material.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:whatsappclone/widgets/iconInCircle.dart';

class CreateCommunityPage extends StatelessWidget {
  const CreateCommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    FocusNode myFocusNode = FocusNode();


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {
          Fluttertoast.showToast(
              msg: "Provide a community name",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.grey[800],
              textColor: Colors.white,
              fontSize: 16.0);
        },
        child: const Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(54),
        child: AppBar(
          backgroundColor: greenColor,
          title: Text(
            'New community',
            style: textStyle.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 19)
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                  ),
                  context: context,
                  builder: (context) => SizedBox(
                    height: 225,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Group Image',
                              style: textStyle.copyWith(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 22)
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconInCircle(height: height*0.13, width: width*0.13, icon: Icons.camera_alt,text: "Photo\nCamera" ,color: greenColor),
                            IconInCircle(height: height*0.13, width: width*0.13, icon: Icons.image,text: "Gallery\nImages" ,color: greenColor),
                            IconInCircle(height: height*0.13, width: width*0.13, icon: Icons.emoji_emotions, text: "Emoji\nand Stickers" ,color: greenColor),
                            IconInCircle(height: height*0.13, width: width*0.13, icon: Icons.search, text: "Search\nin Internet" ,color: greenColor),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Container(
                height: height*0.21,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.35,
                        decoration: BoxDecoration(
                          color: Colors.grey[350],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.people_alt,
                          color: Colors.white60,
                          size: 85,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 105,
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.09,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle,
                          color: greenColor,
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                focusNode: myFocusNode,
                decoration: InputDecoration(
                  labelText: 'Title of community',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus
                          ? Colors.grey[600]
                          : Colors.grey[600]),
                  focusColor: Colors.black12,
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12, width: 2),
                  ),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 200,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Description of community',
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus
                            ? Colors.grey[600]
                            : Colors.grey[600]),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
