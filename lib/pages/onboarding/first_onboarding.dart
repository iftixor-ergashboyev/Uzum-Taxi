import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzum_taxi/pages/onboarding/second_onboarding.dart';

class FirstOnboarding extends StatefulWidget {
  const FirstOnboarding({super.key});

  @override
  State<FirstOnboarding> createState() => _FirstOnboardingState();
}

class _FirstOnboardingState extends State<FirstOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text("Uzum Taxi", style: GoogleFonts.montserrat(
                fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.systemPurple
              )),
            ),
            Gap(30),
            Image.asset('assets/images/onboarding.png'),
            Text("Uzum Taxi'ga hush kelibsiz!", style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, fontSize: 20, color: CupertinoColors.white
            )),
            Gap(8),
            Text("Sizga tez va qulay taksi xizmatlarini taqdim etishga tayyormiz. Har bir safar uchun oson to'lov va real vaqt rejimida kuzatuv funksiyalari mavjud.", textAlign: TextAlign.center, style: GoogleFonts.montserrat(
              fontSize: 16, color: CupertinoColors.white
            ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: CupertinoColors.systemPurple,
            foregroundColor: CupertinoColors.white,
            minimumSize: Size(140, 55),
            elevation: 10,
            shadowColor: CupertinoColors.systemPurple.withOpacity(0.2)
          ),
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => SecondOnboarding()));
          },
          child: Text("Davom etish", style: GoogleFonts.montserrat(fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.white)),
        ),
      ),
    );
  }
}
