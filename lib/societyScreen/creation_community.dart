import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsappclone/help/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';


class CreateCommunityPage extends StatelessWidget {
  const CreateCommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    FocusNode myFocusNode =  FocusNode();




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
             fontSize: 16.0
         );
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
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.w500,
              fontSize: 21,
              color: Colors.white,
            ),
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
                  builder: (context) => Container(
                    height: 225,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              'Group Image',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.13,
                              width: width * 0.13,
                              child: Icon(
                                Icons.camera_alt,
                                color: greenColor,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                              ),
                            ),
                            Container(
                              height: height * 0.13,
                              width: width * 0.13,
                              child: Icon(
                                Icons.image,
                                color: greenColor,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                              ),
                            ),
                            Container(
                              height: height * 0.13,
                              width: width * 0.13,
                              child: Icon(
                                Icons.emoji_emotions,
                                color: greenColor,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                              ),
                            ),
                            Container(
                              height: height * 0.13,
                              width: width * 0.13,
                              child: Icon(
                                Icons.search,
                                color: greenColor,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Photo Camera',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                            ),
                            Text(
                              "Gallery\nImages",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                            ),
                            Text(
                              'Emojies\nand stikers',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                            ),
                            Text(
                              'Search\nin Internet',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
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
                    top: 95,
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.1,
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 20,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                        color: greenColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Container(
            //   margin: EdgeInsets.only(left: 35),
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: Text(
            //       'Title of community',
            //       style: GoogleFonts.openSans(
            //         fontWeight: FontWeight.w500,
            //         fontSize: 18,
            //         color: Colors.grey[600],
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                focusNode: myFocusNode,

                decoration: InputDecoration(
                  labelText: 'Title of community',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? Colors.grey[600] : Colors.grey[600]
                  ),

                  focusColor: Colors.black12,
                  focusedBorder: const UnderlineInputBorder(


                    borderSide:  BorderSide(color: Colors.black12, width: 2),
                  ),
                  border: const UnderlineInputBorder(

                    borderSide:  BorderSide(color: Colors.black12, width: 2),
                  ),
                ),

              ),
            ),
            const SizedBox(height: 20,),




            Container(

              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius:  const BorderRadius.only(
                  topLeft:  Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              ),
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child:  Container(
                height: 200,
                child: TextField(


                  decoration: InputDecoration(
                    labelText: 'Description of community',
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus ? Colors.grey[600] : Colors.grey[600]
                    ),

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
