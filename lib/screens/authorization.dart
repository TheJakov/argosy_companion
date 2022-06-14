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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Argosy Companion!",
                style: GoogleFonts.quicksand(
                    fontSize: 36, fontWeight: FontWeight.w100)),
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
                        hintText: "Authorisation Code"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(ArgosyCompanionConstants.acMainThemeColorHex)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10))),
                child: Text(
                  "Authenticate",
                  style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
    );
  }
}
