import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzum_taxi/pages/home.dart';
import 'package:uzum_taxi/pages/register/register_page.dart';

class SecondOnboarding extends StatefulWidget {
  const SecondOnboarding({super.key});

  @override
  State<SecondOnboarding> createState() => _SecondOnboardingState();
}

class _SecondOnboardingState extends State<SecondOnboarding> {
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
            Image.asset('assets/images/onboarding_2.png', height: 340, width: 340,),
            Text("Xizmatlar va takliflar!", style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20, color: CupertinoColors.white
            )),
            Gap(8),
            Text("Maxsus takliflar va chegirmalar haqida xabardor bo'ling va har safar qulay xizmatlardan foydalaning. Agar siz tezkor yordamga muhtoj bo'lsangiz, ilovamizda tezkor qo'ng'iroq qilish imkoniyatini qo'shdik.", textAlign: TextAlign.center, style: GoogleFonts.montserrat(
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
              elevation: 40,
              shadowColor: CupertinoColors.systemPurple.withOpacity(0.8)
          ),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                RegisterPage()), (Route<dynamic> route) => false);
          },
          child: Text("Davom etish", style: GoogleFonts.montserrat(fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.white)),
        ),
      ),
    );
  }
}
