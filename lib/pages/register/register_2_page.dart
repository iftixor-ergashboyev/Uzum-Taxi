import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzum_taxi/pages/register/otp_page.dart';

class Register2Page extends StatefulWidget {
  const Register2Page({super.key});

  @override
  State<Register2Page> createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {

  DateTime dateTime = DateTime(2024, 2, 10, 20);

  String _selectedImage = 'assets/images/man.png'; // Default image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      body: Padding(
        padding: EdgeInsets.all(12.0),
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
              Gap(30),
              Text(
                "Ma'lumotlaringizni kiriting",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                  fontSize: 22,
                ),
              ),
              Gap(20),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      height: 150,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedImage = 'assets/images/man.png';
                                });
                                Navigator.pop(context);
                              },
                              child: ClipOval(
                                child: Image.asset('assets/images/man.png', height: 100, width: 100),
                              ),
                            ),
                            SizedBox(width: 40),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedImage = 'assets/images/girl.png';
                                });
                                Navigator.pop(context);
                              },
                              child: ClipOval(
                                child: Image.asset('assets/images/girl.png', height: 100, width: 100),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(77),
                    color: Colors.deepPurple.shade100,
                  ),
                  child: ClipOval(
                    child: Image.asset(_selectedImage, fit: BoxFit.cover),
                  ),
                ),
              ),
              Gap(20),
              TextField(
                style: GoogleFonts.montserrat(color: CupertinoColors.white),
                decoration: InputDecoration(
                  hintText: 'Ism Familyangiz',
                  hintStyle: GoogleFonts.montserrat(color: CupertinoColors.systemGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
              Gap(10),
              Row(
                children: [
                  Text("Tug'ilgan kuningizni kiriting:", style: GoogleFonts.montserrat(
                    fontSize: 14, color: CupertinoColors.white
                  )),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(context: context,
                          builder: (BuildContext context) => Container(
                            height: 250,
                            child: CupertinoDatePicker(
                              backgroundColor: CupertinoColors.white,
                              initialDateTime: dateTime,
                              onDateTimeChanged: (DateTime newTime) {
                                setState(() => dateTime = newTime);
                              },
                              use24hFormat: true,
                              mode: CupertinoDatePickerMode.date,
                            ),
                          )
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: CupertinoColors.systemPurple),
                      ),
                      child: Center(
                        child: Text('${dateTime.month}-${dateTime.day}-${dateTime.year}', style: GoogleFonts.montserrat(
                            color: CupertinoColors.white, fontSize: 20
                        )),
                      ),
                    ),
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
            Navigator.push(context, CupertinoPageRoute(builder: (context) => OtpPage()));
          },
          child: Text("Davom etish", style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold, color: CupertinoColors.white)),
        ),
      ),
    );
  }
}
