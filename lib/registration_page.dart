// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'global_variables.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}



class _RegistrationPageState extends State<RegistrationPage> {

  bool first = false, second = false, third = false;

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBar("Registration", "arrow_back", 30, context, Colors.grey.shade50),

      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
              spacer(10),
      
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal : 30.0, ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan( 
                            children: [
                            TextSpan(text: 'Individual Self-Certification relevant for ', style: tstyle(16, black, FontWeight.w400)),
                            TextSpan(text: 'FATCA', style: GoogleFonts.ibmPlexSans(fontSize: 16.0, color: blue, fontWeight: FontWeight.w600,)),
                            TextSpan(text: ' and ', style: tstyle(16.0, black, FontWeight.w400)),
                            TextSpan(text: 'CRS', style: GoogleFonts.ibmPlexSans(fontSize: 16.0, color: blue, fontWeight: FontWeight.w600,)),
                            TextSpan(text: ' purposes', style: GoogleFonts.ibmPlexSans(fontSize: 16.0, color: black, fontWeight: FontWeight.w400, height: 1.5)),
                          ]
                          ),
                   ),
                ),
      
              spacer(30),
      
              header("1. Country of your Tax Residence"),
      
              spacer(8),
      
              Text("Please indicate all countries, also domestic, where you are tax resident and your TIN (Taxpayer Identification Number) for each country:",
                style: GoogleFonts.ibmPlexSans(fontWeight: FontWeight.w400, height: 1.4, fontSize: 14, color: black),
              ),
      
              spacer(24),
      
              Container(
                height: 56,
                decoration: BoxDecoration(
                 color: lightBlue,
                 border: Border.all(color: blue),
                 borderRadius: BorderRadius.circular(8)
                ),
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  children: [
                    SvgPicture.asset("icons/brazil.svg",),
                    hspacer(11.63),
                    Icon(Icons.keyboard_arrow_down_sharp, size: 24, color: blue),
                    hspacer(16),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Country", style: tstyle(12, black, FontWeight.w300)),
                      Text("Brazil", style: tstyle(14, black, FontWeight.w600)),
                    ],),
                  ]
                ),
              ),
      
              spacer(20),
      
            Container(
                  height: 56,
                  decoration: BoxDecoration(
                  border: Border.all(color: blue),
                  borderRadius: BorderRadius.circular(8)
                  ),
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                      hintText: "Enter TIN", 
                      hintStyle: GoogleFonts.ibmPlexSans(color: black, fontSize: 14, fontWeight: FontWeight.w300),
                      border: InputBorder.none
                      ),
                    ),
                  )
            ),
      
            spacer(3),
      
            Align(alignment: Alignment.bottomRight,
              child: IconButton(icon: SvgPicture.asset("icons/delete.svg",),
                    onPressed: (){},
                ),
            ),
      
            spacer(7),
      
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: lightBlue,
                    child: Icon(Icons.add, color: black, size: 22,),
                  ),
                spacer(8),
                Text("Add another country", style: tstyle(14, black, FontWeight.w300))
                ],
              ),
            ),
      
            spacer(40),
      
            header("2. FATCA Related"),
      
            spacer(8),
      
            Text("Please select one of the options by checking the corresponding box below:",
                style: tstyle(14, black, FontWeight.w400).copyWith(height: 1.4)
              ),

            spacer(21.5),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: width*0.7,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan( 
                          children: [
                          TextSpan(text: 'I herby certify that ', style: tstyle(14.0, Colors.black, FontWeight.w300).copyWith(height: 1.5)),
                          TextSpan(text: 'I am a tax resident of the United States', style: tstyle(14, blue, FontWeight.w600).copyWith(height: 1.5)),
                          TextSpan(text: ' and that I have designated the United States as one of the countries in the above section.', 
                            style: tstyle(14, black, FontWeight.w300).copyWith(height: 1.5)
                            ),
                          ]
                        ),
                  ),
              ),
      
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      first = !first;
                      second = false;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: blue),
                      color: first? blue : null
                    ),
                    child: first? 
                      Icon(Icons.check, color: white, size: 17,)
                      :
                      null
                  ),
                ),
              )
            ],),
      
            spacer(38),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: width*0.7,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan( 
                          children: [
                          TextSpan(text: 'I herby certify that ', style: tstyle(14.0, Colors.black, FontWeight.w300).copyWith(height: 1.5)),
                          TextSpan(text: 'I am not a tax resident of the United States.', style: tstyle(14, blue, FontWeight.w600).copyWith(height: 1.5)),
                          ]
                        ),
                  ),
              ),
      
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      second = !second;
                      first = false;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: blue),
                      color: second? blue : null
                    ),
                    child: second? 
                      Icon(Icons.check, color: white, size: 17,)
                      :
                      null
                  ),
                ),
              )
            ],),
      
            spacer(61),

            header("3. Declaration"),

            spacer(10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                width: width*0.7,
                child: Text(
                  'I herby declare that the information provided on this form is complete, correct and true. The information provided may be used for reporting purposes according to local law. I agree that I will inform you within 30 days if any certification on this form becomes incorrect or will no longer be aplied.', 
                  style: tstyle(14.0, Colors.black, FontWeight.w300).copyWith(height: 1.5),
                  textAlign: TextAlign.left,
                  ),
              ),
      
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      third = !third;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: blue),
                      color: third? blue : null
                    ),
                    child: third? 
                      Icon(Icons.check, color: white, size: 17,)
                      :
                      null
                  ),
                ),
              )
            ],),


           spacer(55),


            Align(
              alignment: Alignment.bottomCenter,
              child: Text("Date: 15.08.2022", style: tstyle(16, blue, FontWeight.w600))
              ),
      
            spacer(20),
      
            Container(
              height: 40,
              width: width,
              decoration: BoxDecoration(
                color: lightBlue,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(child: Text("CONTINUE", style: tstyle(14, black, FontWeight.w300)))
            ),

            spacer(30),

      
              ],
            ),
          ),  
        ),
      ),
    );
  }

  header(text){
    return Text(text, style: GoogleFonts.ibmPlexSans(color: blue, fontSize: 16, fontWeight: FontWeight.w600));
  }
  
}