import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
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
                          border: InputBorder.none, hintText: "Korisničko ime"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
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
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Lozinka"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text("Zaboravili ste lozinku?",
                  style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      decoration: TextDecoration.underline)),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                        color:
                            Color(ArgosyCompanionConstants.acMainThemeColorHex),
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        "Prijava",
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
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
