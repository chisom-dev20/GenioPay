// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geniopay/empty_screen.dart';
import 'package:geniopay/global_variables.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


 @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  int? index;

  String page = '';

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: index == null? AppBar(
        elevation: 0,
        backgroundColor: lightBlue,
        leading: null,
        leadingWidth: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
              Image(image: AssetImage("images/ImageProfile.png"),),
              hspacer(10),
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning", style: tstyle(12, blue, FontWeight.w500),),
              Text("New Genius", style: tstyle(18, blue, FontWeight.w700),)
            ],
          ),
            ],
          ),
          
           Padding(
             padding: const EdgeInsets.only(right: 5.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        customNavigation(context, EmptyScreen(text: "Plant a Tree",));
                      },
                      child: SvgPicture.asset("icons/tree.svg",)),
                    hspacer(3),
                    InkWell(
                      onTap: (){
                          customNavigation(context, EmptyScreen(text: "Notifications",));
                        },
                      child: SizedBox(
                        width: 23,
                        child: Stack(children: [
                          SvgPicture.asset("icons/notifications.svg",),
                          Positioned(
                            left: 10,
                            child: CircleAvatar(
                              radius: 5.5,
                              backgroundColor: Colors.red,
                              child: Text('10', style: GoogleFonts.ibmPlexSans(fontSize: 6, color: Colors.white)),
                            ),
                          )
                        ],) 
                      ),
                    ),
                    hspacer(3),
                    InkWell(
                      onTap: (){
                        customNavigation(context, EmptyScreen(text: "Plant a Tree",));
                      },
                      child: SvgPicture.asset("icons/big_help.svg", color: blue,)
                      ),
                  ],
                ),
                spacer(5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Text("10 000", style: tstyle(12, blue, FontWeight.w600),),
                    hspacer(6),
                  SvgPicture.asset("icons/star.svg",),
                ],)
              ],
          ),
           )
        ]),
       
      )
      :
      null,

      body: 
        index != null?
        Center(
          child: Text(page)
        )
        :
        Container(
        color: lightBlue,
        child: Column(
          children: [
            spacer(30),
             Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
               child: Stack(
                 children: [
                   Container(
                     height: 290,
                      width: width,
                     decoration: BoxDecoration(
                         color: blue,
                         borderRadius: BorderRadius.circular(30),
                         boxShadow: [BoxShadow(
                            color: blue.withOpacity(0.5),
                            spreadRadius: 0.8, 
                            blurRadius: 0.2,
                        ),] 
                       ),
                   ),

                   Padding(
                         padding: const EdgeInsets.only(top: 1.2, left: 0.3, right: 0.3),
                         child: Container(
                        decoration: BoxDecoration(
                         color: lightBlue,
                         borderRadius: BorderRadius.circular(30),
                       ),
                             height: 290.5,
                             width: width,
                            padding: EdgeInsets.symmetric(horizontal: 19),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                spacer(27),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    hspacer(23),
                                    Text("Total Balance", style: tstyle(12, blue, FontWeight.w400),),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: SvgPicture.asset("icons/show.svg",),
                                  ),
                                  ],
                                ),
                                spacer(6),
                                Text("\$450.49", style: tstyle(44, blue, FontWeight.w600),),
                                spacer(18),
                                Container(
                                  height: 20,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color.fromRGBO(0, 138, 167, 0.3)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Text("USD", style: tstyle(10, blue, FontWeight.w500),),
                                    Icon(Icons.keyboard_arrow_down, color: blue, size: 15,)
                                  ],),
                                ),
                                spacer(25),
                                Divider(height: 0, thickness: 0.3, color: blue.withOpacity(0.3),),
                                spacer(16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    bigIcon("Pay out", "arrow_forward"),
                                    bigIcon("Pay in", "pay_in"),
                                    bigIcon("Exchange", "big_exchange"),
                                    bigIcon("More", "more"),
                                  ],
                                )
                              ],
                            ),
                         ),
                       ),
                 ],
               ),
             ),

          spacer(15),

        Expanded(
          child: Container(
            width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
          child: Column(
            children: [
                
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 3,
                      width: 20,
                      color: lightBlue,
                    ),
                  ),
              ),
                          
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                      child: Column(
                        children: [
                        
                        spacer(3),

                        Container(
                          height: 95,
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                               padding: EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                children: [
                                  Container(
                                    height: 93,
                                    width: width * 0.78,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color.fromRGBO(17, 122, 250, 1)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 19),
                                        child: Container(
                                          width: width * 0.5,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Invite your friends", style: tstyle(14, white, FontWeight.w600),),
                                                spacer(5),
                                              Text("For every invite, you win \$20!\nClick here to start inviting your friends.", 
                                                style: tstyle(10, white, FontWeight.w300),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Image(image: AssetImage("images/invite.png"), height: 80, fit: BoxFit.fitHeight,),
                                    ),
                                    ]),
                                  ),
                                  
                                  hspacer(16),
              
                                  Container(
                                    height: 93,
                                    width: width*0.78,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color.fromRGBO(223, 51, 79, 1)
              
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 15, top: 19),
                                        child: Container(
                                          width: width * 0.5,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Create an Account", style: tstyle(14, white, FontWeight.w600),),
                                                spacer(5),
                                              Text("Save money into your account easily!\nJust guessing text here.", 
                                                style: tstyle(10, white, FontWeight.w300),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: Image(image: AssetImage("images/invite.png"), height: 80, fit: BoxFit.fitHeight,),
                                    ),
                                    ]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
              
                      Padding(
                        padding: EdgeInsets.all(20), 
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Text("Transactions", style: tstyle(14, black, FontWeight.w600),),
                              Text("View all", style: tstyle(12, black, FontWeight.w400).copyWith(decoration: TextDecoration.underline),)
                          ]),
              
                      spacer(10),
              
                      transaction("Dribble", "dribble", true),
              
                      transaction("Spotfiy", "spotify", false),
              
                      transaction("Spotfiy", "spotify", true),
              
                      transaction("Dribble", "dribble", false),
              
                      transaction("Dribble", "dribble", true),
              
                      transaction("Spotfiy", "spotify", false),
              
                      ]),
                      ),
                        ],
                      ),
                      ),
                ),
              ),
            ],
          )
          ),
        )
          ],
        ),
      ),

    bottomNavigationBar: Material(
      elevation: 4,
      child: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          elevation: 6,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          backgroundColor: white,
          currentIndex: 0,
          onTap: (i){
              setState(() {
                index = i;
                
                if(i == 0){
                  page = "Cards";
                }

                else if (i == 1){
                  page = "Account";
                }

                 else if (i == 2){
                  page = "Wallet";
                }

                else if (i == 3){
                  page = "Menu";
                }
              });
          },
          items: [ 
           
           BottomNavigationBarItem (
            icon: SvgPicture.asset("icons/bottom_card.svg", color: index==0? blue: null),
            label: '',
            ),
    
           BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(right: width * 0.15),
              child: SvgPicture.asset("icons/dollar-square.svg", color: index==1? blue: null),
            ),
            label: '',
            ),
    
           BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(left: width * 0.15),
              child: SvgPicture.asset("icons/wallet.svg", color: index==1? blue: null),
            ),
            label: '',
            ),
            
           BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: index==1? blue: black,),
            label: '',
            ),
          ],
            showUnselectedLabels: true,
            iconSize: 25.0,
        ),
      ),
    ),
    
     floatingActionButton: Material(
      elevation: 0.15,
      color: white,
      borderRadius: BorderRadius.circular(35),
       child: Padding(
         padding: EdgeInsets.only(bottom: 10, left: 5, right: 5),
         child: FloatingActionButton(
           backgroundColor: Colors.white,
            onPressed: (){
              setState(() {
               index = null;
              });
            },
            elevation: 0,
            child: homeLogo(30, 40)
         ),
       ),
     ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,  
      );  
  }


  transaction(String title, String svg, bool complete,){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset("icons/$svg.svg",),
              hspacer(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: tstyle(13, black, FontWeight.w400),),
                  spacer(4),
                  Text("2021.05.04", style: tstyle(10, black.withOpacity(0.5), FontWeight.w400),),
                ],
              ),
                ],
          ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("-\$ 99.00", style: tstyle(13, black, FontWeight.w400),),
                  spacer(4),
                  Text(complete? "Completed" : "In Progress", style: tstyle(10, complete? Color.fromRGBO(21, 207, 116, 0.5) : Color.fromRGBO(235, 215, 92, 0.5), FontWeight.w400),),
                ],
              ),
          
      ],),
    );
  }

  bigIcon(String title, String svg){
    return InkWell(
      onTap: (){
        customNavigation(context, EmptyScreen(text: title,));
      },
      child: Column(
        children:[
          SvgPicture.asset("icons/$svg.svg",),
          spacer(6),
          Text(title, style: tstyle(12, blue, FontWeight.w400),)
        ]
      ),
    );
  }
}