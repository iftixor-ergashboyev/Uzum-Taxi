import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzum_taxi/pages/register/register_2_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20),
                child: Text("Uzum Taxi", style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, color: CupertinoColors.systemPurple, fontSize: 22
                )),
              ),
              Gap(40),
              Text("Ro'yxatdan o'tish", style: GoogleFonts.montserrat(
                fontSize: 26, color: CupertinoColors.white, fontWeight: FontWeight.bold
              )),
              Gap(20),
              TextField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.montserrat(color: CupertinoColors.white),
                decoration: InputDecoration(
                  hintText: 'Telefon raqamingiz',
                  hintStyle: GoogleFonts.montserrat(color: CupertinoColors.systemGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                ),
              ),
              Gap(10),
              TextField(
                style: GoogleFonts.montserrat(color: CupertinoColors.white),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Yangi parol',
                  hintStyle: GoogleFonts.montserrat(color: CupertinoColors.systemGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)
                  ),
                ),
              ),
              Gap(10),
              TextField(
                style: GoogleFonts.montserrat(color: CupertinoColors.white),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Parolni takrorlang',
                  hintStyle: GoogleFonts.montserrat(color: CupertinoColors.systemGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)
                  ),
                ),
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Accountingiz bormi?", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: CupertinoColors.systemPurple)),
                  CupertinoButton(
                      child: Text("Login in", style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: CupertinoColors.white)),
                      onPressed: () {}
                  )
                ],
              )
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
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => Register2Page())
            );
          },
          child: Text("Davom etish", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.white)),
        ),
      ),
    );
  }
}
