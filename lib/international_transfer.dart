// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geniopay/global_variables.dart';


class InternationalTransfer extends StatelessWidget {
  const InternationalTransfer ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar("International transfer", "cancel", 23, context, Colors.grey.shade50),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 19,
                  child: SvgPicture.asset("icons/calendar.svg", height:25,)),
              ),

              spacer(19),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 185,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: white,
                    boxShadow: [BoxShadow(
                      color: black.withOpacity(0.025),
                      spreadRadius: 4.0, 
                      blurRadius: 4.0,
                  ),]
                  ),

                  padding: EdgeInsets.all(25),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("You send from Poland", style: tstyle(7, black, FontWeight.w300),),

                      Text("1 USD = 0.94 EUR", style: tstyle(7, black, FontWeight.w300),)

                    ],),

                    spacer(11),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                        children: [
                          SvgPicture.asset("icons/usa.svg",),
                          hspacer(8),
                          Text("USD", style: tstyle(14, black, FontWeight.w500),),
                           Icon(Icons.keyboard_arrow_down_outlined, size: 16,),
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("\$", style: tstyle(16, black, FontWeight.w600),),
                          Text("1,000.00", style: tstyle(25, black, FontWeight.w600),),
                        ],
                      ),
                    ],),

                    spacer(10),

                     Row(
                        children: [
                          SvgPicture.asset("icons/exchange.svg",),
                          Expanded(child: Divider(height: 0, color: lightBlue, ))
                        ],
                      ),

                    spacer(3),

                    Text("They recieve in Italy", style: tstyle(7, black, FontWeight.w300),),

                    spacer(10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Row(
                        children: [
                          SvgPicture.asset("icons/usa.svg",),
                          hspacer(8),
                          Text("USD", style: tstyle(14, black, FontWeight.w500),),
                          Icon(Icons.keyboard_arrow_down_outlined, size: 16,),
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("€", style: tstyle(16, blue, FontWeight.w600),),
                          Text("935.34", style: tstyle(25, blue, FontWeight.w600),),
                        ],
                      ),
                    ],),

                  ]
                  ),
                ),
              ),

            spacer(25),

            header("Reciever"),

            spacer(8),

            container(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [                           
                Row(
                  children: [
                    Image(image: AssetImage("images/face.png"),),
                    hspacer(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title("Jane Smith"),
                        sub("+44567876543")
                      ],
                    )
                  ],
                ),

                SvgPicture.asset("icons/play.svg",),

              ],),
            ),


            spacer(25),

            header("Delivery Time"),

            spacer(8),
            
            container(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [                           
                Row(
                  children: [
                    SvgPicture.asset("icons/time.svg",),
                    hspacer(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("icons/fast.svg",),
                            title(" Card Payment"),
                          ]),
                         sub("Within 30 minutes")
                      ],
                    )
                  ],
                ),

                Row(
                  children: [

                    Column(
                      children: [
                        Text("Free", style: tstyle(12, blue, FontWeight.w600)),
                        Text("\$3.00", style: tstyle(12, black, FontWeight.w300).copyWith(decoration: TextDecoration.lineThrough))
                      ],
                    ),

                  hspacer(23),
                    
                  SvgPicture.asset("icons/play.svg",),
                  ],
                ),

              ],),
            ),


            spacer(25),

            header("Payment Method"),

            spacer(8),
            
            container(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [                           
                Row(
                  children: [
                    SvgPicture.asset("icons/card.svg",),
                    hspacer(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        title("Card Payment"),
                        Row(
                          children: [
                          SvgPicture.asset("icons/logos_mastercard.svg",),
                          sub(" Mastercard x-123")
                          ],
                        )
                      ],
                    )
                  ],
                ),

                SvgPicture.asset("icons/play.svg",),

              ],),
            ),

            spacer(25),

            header("Reference"),

            spacer(8),
            
            container(
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [                           
                Row(
                  children: [
                    SvgPicture.asset("icons/reference.svg",),
                    hspacer(12),
                    title("School fees"),
                  ],
                ),

                SvgPicture.asset("icons/play.svg",),
              ],),
            ),

          spacer(25),

            Container(
              height: 74,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: blue
              ),
              padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
              child: Row(
                children: [
                SvgPicture.asset("icons/pay.svg",),
                
                hspacer(11),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total to pay", style: tstyle(12, white, FontWeight.w300)),
                    Text("\$1,005.00", style: tstyle(16, white, FontWeight.w600)),
                  ],
                )
              ]),
            ),

            spacer(40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(235, 215, 92, 1)
                ),
                child: Center(child: Text("SEND", style: tstyle(14, black, FontWeight.w600),))
              ),
            ),

          spacer(20),

          ],
          ),
        ),
      ),
    );
  }

  header(String text){
    return Text(text, style: tstyle(14, blue, FontWeight.w500));
  }

  title(String text){
    return Text(text, style: tstyle(12, black, FontWeight.w600));
  }

  sub(String text){
    return Text(text, style: tstyle(12, black, FontWeight.w300));
  }

  container({width, child}){
    return Container(
              height: 88,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: black.withOpacity(0.025),
                  spreadRadius: 3.0, 
                  blurRadius: 3.0,
               ),]
              ),
              padding: EdgeInsets.all(24),

              child: child
    );
  }
}