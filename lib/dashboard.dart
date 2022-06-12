import 'package:argosy_companion/putni_nalozi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

int ulazniRacunHex = 0xFF16a085;
int izlazniRacunHex = 0xFF2ecc71;
int putniNalogHex = 0xFFf39c12;
int obracunHex = 0xFF8e44ad;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Odobravanje dokumenata",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              buildRoundedReport(
                  context, Color(izlazniRacunHex), "Izlazni racuni", 1, 0),
              SizedBox(
                height: 15,
              ),
              buildRoundedReport(
                  context, Color(ulazniRacunHex), "Ulazni racuni", 1, 0),
              SizedBox(
                height: 15,
              ),
              buildRoundedReport(
                  context, Color(putniNalogHex), "Putni nalozi", 1, 0),
              SizedBox(
                height: 15,
              ),
              buildRoundedReport(
                  context, Color(obracunHex), "Obracun putnih naloga", 1, 0),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget buildRoundedReport(BuildContext context, Color backgroundColor,
        String title, int documents, int newDocuments,
        {TextStyle titleStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle descStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle dateStyle =
            const TextStyle(fontSize: 10, color: Colors.white),
        double widthRatio = 0.8}) =>
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PutniNalozi()),
        );
      },
      child: Card(
        color: backgroundColor,
        shadowColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: titleStyle,
                  ),
                  Text(
                    '$newDocuments',
                    style: descStyle,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$documents',
                    style: descStyle,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
