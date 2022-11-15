// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geniopay/global_variables.dart';


class InsurancePage extends StatefulWidget {
  const InsurancePage({Key? key}) : super(key: key);

   @override
  State<InsurancePage> createState() => _RegistrationPageState();
}



class _RegistrationPageState extends State<InsurancePage> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    
    return Scaffold(
      appBar: appBar("", "arrow_back", 30, context, lightBlue),

      body: SingleChildScrollView(
        child: Container(
            color: lightBlue,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text("The more money you send, the better your insurance gets", textAlign: TextAlign.center, style: tstyle(18, blue, FontWeight.w500),),
              ),
      
              spacer(5),
      
              Material(
                elevation: 2,
                child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: white,
                        boxShadow: [BoxShadow(
                          color: black.withOpacity(0.025),
                          spreadRadius: 0.2, 
                          blurRadius: 0.1,
                      ),]
                      ),
                )
              ),
      
              GestureDetector(
                onHorizontalDragEnd: (DragEndDetails dragEndDetails) {
                    if (dragEndDetails.primaryVelocity! > 0) {
                      if(index>0 && index <= 2){
                        setState(() {
                          index -= 1;
                        });
                      }
      
                    } else if (dragEndDetails.primaryVelocity! < 0) {
                      if(index < 2){
                        setState(() {
                          index += 1;
                        });
                      }
                    }
                  },
          child: Container(
            height: 560,
            color: lightBlue,
            child: Stack(
              children: [
                Positioned(
                  top: 43,
                  child: Container(
                    width: width,
                    height: 515,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        color: white,
                          boxShadow: [BoxShadow(
                            color: blue.withOpacity(0.15),
                            spreadRadius: 7.0, 
                            blurRadius: 7.0,
                        ),]
                        ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: index != 1? 
                        Center(child: Text(index==0? "First Insurance" : "Third Insurance", style: tstyle(16, black, FontWeight.w400),))
                        :
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          spacer(50),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text("Basic Plan", textAlign: TextAlign.center, style: tstyle(30, black, FontWeight.w700),),
                          ),
                          spacer(12),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text("Send €200 (or more) per\nmonth and get coverage for:", textAlign: TextAlign.center, style: tstyle(18, blue, FontWeight.w500),),
                          ),
                          spacer(33),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width * 0.4,
                                child: Text("Accidental death, dismemberment, or paralysis", style: tstyle(16, black, FontWeight.w500),)
                              ),
      
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Up to", style: tstyle(12, black, FontWeight.w300),),
                                  Text("€5,000", style: tstyle(16, black, FontWeight.w500),)
                                ],
                              )
      
                            ],
                          ),
      
                          spacer(16),
                          
                          Divider(color: blue.withOpacity(0.1), height: 0,),
                          
                          spacer(16),
      
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: width * 0.4,
                                    child: Text("Temporary total disability", style: tstyle(16, black, FontWeight.w500),)
                                  ),
                                  Text("(caused by accident)", style: tstyle(16, black, FontWeight.w300),)
                                ],
                              ),
      
                              Text("N/A", style: tstyle(16, black, FontWeight.w500),)
      
                            ],
                          ),
      
                         spacer(16),
                          
                          Divider(color: blue.withOpacity(0.1), height: 0,),
                          
                        spacer(16),
      
      
                      Text("In case of death due to an accident:", style: tstyle(14, blue, FontWeight.w500),),
                      
                       spacer(16),
      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Funeral costs", style: tstyle(16, black, FontWeight.w500),),
                          Text("N/A", style: tstyle(16, black, FontWeight.w500),),
                        ],
                      ),
      
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("OR", style: tstyle(16, black, FontWeight.w300),),
                      ),
      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Reparation", style: tstyle(16, black, FontWeight.w500),),
                          Text("N/A", style: tstyle(16, black, FontWeight.w500),),
                        ],
                      ),
                       spacer(16),
                        ],
                      ),
                    ),
                  ),
                ),
      
                Positioned(
                  top: 0,
                  left: index == 1? (width*0.5) - 38 : (width*0.5) - 36,
                  child: index == 1? Image.asset("images/basic.png",) : Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: CircleAvatar(radius: 36, backgroundColor: blue.withOpacity(1),),
                  )
                  )
              ],
            ),
          ),
              ),
      
          spacer(16),
        
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                indicator(0),
                indicator(1),
                indicator(2),
              ]
          ),
      
          spacer(12),
      
          SizedBox(
            width: width,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan( 
                      children: [
                      TextSpan(text: 'Terms & Conditions apply, click ', style: tstyle(14.0, Colors.black, FontWeight.w500)),
                      TextSpan(text: 'here', style: tstyle(14, blue, FontWeight.w400).copyWith(decoration: TextDecoration.underline)),
                      TextSpan(text: ' for more', style: tstyle(14, black, FontWeight.w500)),
                      ]
                    ),
              ),
            ),

          spacer(20),

          bottomLine(9)
            ],
          ),
        ),
      ),
    );
  }

  indicator(int tag){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: (){
          setState(() {
            index = tag;
          });
        },
        child: CircleAvatar(
          radius: index == tag? 6 : 4, 
          backgroundColor: index == tag? blue : blue.withOpacity(0.4),
        ),
      ),
    );
  }  
}