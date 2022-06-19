import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Authorisation extends StatefulWidget {
  const Authorisation({Key? key}) : super(key: key);

  @override
  State<Authorisation> createState() => _AuthorisationState();
}

class _AuthorisationState extends State<Authorisation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('img/blob_background_theme.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Argosy",
                  style: GoogleFonts.quicksand(
                      fontSize: 42, fontWeight: FontWeight.w100)),
              Text("Companion",
                  style: GoogleFonts.quicksand(
                      fontSize: 42, fontWeight: FontWeight.w100)),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Aktivacijski kod"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Kako mogu dobiti aktivacijski kod?",
                  style: GoogleFonts.quicksand(
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                      decoration: TextDecoration.underline)),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        color:
                            Color(ArgosyCompanionConstants.acMainThemeColorHex),
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        "Aktivacija",
                        style: GoogleFonts.quicksand(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
