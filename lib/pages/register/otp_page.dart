import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzum_taxi/pages/home.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Uzum Taxi",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.systemPurple,
                    fontSize: 22,
                  ),
                ),
              ),
              Gap(20),
              Text("SMS habarini kiriting", style: GoogleFonts.montserrat(
                fontSize: 22, fontWeight: FontWeight.bold, color: CupertinoColors.white
              )),
              Gap(20),
              Text("Sizning kiritgan raqamingizga SMS ko'dini yubordik, iltimos o'sha ko'dni kiriting!", textAlign: TextAlign.center, style: GoogleFonts.montserrat(
                color: CupertinoColors.white, fontSize: 14,
              )),
              Gap(10),
              OtpTextField(
                keyboardType: TextInputType.number,
                fieldHeight: 75,
                fieldWidth: 50,
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 5,
                textStyle: GoogleFonts.urbanist(
                    textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.white )),
                fillColor: Colors.grey,
                filled: true,
                borderWidth: 0,
                borderColor: Colors.transparent,
                enabledBorderColor: Colors.transparent,
                focusedBorderColor: Colors.transparent,
              ),
              Gap(10),
              Text("Agar SMS kelmasa kiritgan raqamingiz\n to'g'ri ekanligini tekshirib ko'ring.", textAlign: TextAlign.center, style: GoogleFonts.montserrat(
                  color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold
              ))
            ],
          ),
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
            Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context) =>
                HomePage()), (Route<dynamic> route) => false);
          },
          child: Text("Keyingisi", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.white)),
        ),
      ),
    );
  }
}
