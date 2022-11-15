// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:geniopay/home_screen.dart';
import 'package:geniopay/insurance_page.dart';
import 'package:geniopay/international_transfer.dart';
import 'package:geniopay/proof_identity.dart';
import 'package:geniopay/registration_page.dart';
import 'global_variables.dart';

class IntroPage extends StatelessWidget {
  const IntroPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            logo(40.0, 55),
      
            spacer(20),
      
            Text("Practice Test", style: tstyle(16, black, FontWeight.w600)),
      
            spacer(20),
      
            menu("Registration-Tax", RegistrationPage(), context),
      
            menu("Insurance/basic", InsurancePage(), context),
      
            menu("International Transfer", InternationalTransfer(), context),
            
            menu("Home Screen", HomeScreen(), context),
      
            menu("Proof Identity", ProofIdentity(), context),
      
            spacer(20),
      
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name of Applicant: ", style: tstyle(16, black, FontWeight.w400)),
                    spacer(5),
                    Text("Nwankwo Chisom Divine.", style: tstyle(18, black, FontWeight.w600)),
                    spacer(2),
                    Text("chisomdev20@gmail.com", style: tstyle(14, blue, FontWeight.w600)),
                  ],
                ),
              ),
            ),
        ]),
      )
    );
  }


  menu(String text, screen, context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: (){
          customNavigation(context, screen,);
      }, 
      child: Text(text, style: TextStyle(color: Colors.white),)),
    );
  }
}