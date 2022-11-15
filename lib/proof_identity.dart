// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geniopay/empty_screen.dart';
import 'package:geniopay/global_variables.dart';

class ProofIdentity extends StatelessWidget {
  const ProofIdentity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    final width = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: appBar("", "arrow_back", 30, context, lightBlue),

      body: Container(
        height: height,
        color: lightBlue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 30),
              child: Container(
                width: width*0.8,
                padding: EdgeInsets.only(left: 25),
                child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan( 
                              children: [
                              TextSpan(text: 'We need to verify your', style: tstyle(30.0, Colors.black, FontWeight.w600).copyWith(height: 1.3)),
                              TextSpan(text: ' identity', style: tstyle(30, black, FontWeight.w400).copyWith(height: 1.3)),
                              ]
                            ),
                  ),
              ),
            ),
            
           Expanded(
             child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                     child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                    children: [
           
                      spacer(30),
           
                      Row(
                        children: [
                          SvgPicture.asset("icons/id-card.svg",),
                          hspacer(16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width*0.6,
                                child: Text("Valid Government Issued ID Document Scan", style: tstyle(16, black, FontWeight.w400),)
                                ),
                              Text("learn more", style: tstyle(16, blue, FontWeight.w400).copyWith(decoration: TextDecoration.underline),)
                            ],
                          )
                        ],
                      ),
                     
                        spacer(30),
                     
                      Row(
                        children: [
                          SvgPicture.asset("icons/residence.svg",),
                          hspacer(16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width*0.6,
                                child: Text("Proof of Residence Document Scan", style: tstyle(16, null, FontWeight.w400),)
                                ),
                              InkWell(
                                onTap: (){
                                  customNavigation(context, EmptyScreen());
                                },
                                child: Text("learn more", style: tstyle(16, blue, FontWeight.w400).copyWith(decoration: TextDecoration.underline),))
                            ],
                          )
                        ],
                      ),
                     
                      spacer(30),
                     
                      Row(
                        children: [
                          SvgPicture.asset("icons/record.svg",),
                          hspacer(16),
                          SizedBox(
                            width: width*0.6,
                            child: Text("We will ask you to record a short video of yourself using the app", style: tstyle(16, black, FontWeight.w400),)
                          )
                        ],
                      ),
                     
                      spacer(50),
                     
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text("Please prepare documents mentioned above!", textAlign: TextAlign.center, style: tstyle(18, blue, FontWeight.w600),),
                      ),
                     
                      spacer(30),
                     
                    Text("There may also be rare situations where we would require you to upload additional documents.",  textAlign: TextAlign.center, 
                       style: tstyle(14, blue, FontWeight.w400),),
                     
                    spacer(33),
                     
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(235, 215, 92, 1)
                    ),
                    child: Center(child: Text("CONTINUE", style: tstyle(14, black, FontWeight.w600),))
                  ),
                     
                  spacer(44),
           
                  bottomLine(20)
           
                    ],
                ),
              ),
                     )
                     ),
           )
          ],
        ),
      ),
    );
  }
}