import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/putni_nalozi.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

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
                children: const [
                  Text(
                    "Odobravanje dokumenata",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              buildRoundedReport(
                  context, Color(ArgosyCompanionConstants.izlazniRacunHex), "Izlazni računi", 1, 0),
              const SizedBox(
                height: 15,
              ),
              buildRoundedReport(
                  context, Color(ArgosyCompanionConstants.ulazniRacunHex), "Ulazni računi", 3, 1),
              const SizedBox(
                height: 15,
              ),
              buildRoundedReport(
                  context, Color(ArgosyCompanionConstants.putniNalogHex), "Putni nalozi", 6, 3),
              const SizedBox(
                height: 15,
              ),
              buildRoundedReport(
                  context, Color(ArgosyCompanionConstants.obracunHex), "Obračun putnih naloga", 2, 1),
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
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        TextStyle dateStyle =
            const TextStyle(fontSize: 10, color: Colors.white),
          TextStyle italicStyle = const TextStyle(
            color: Colors.white, fontSize: 16 ),
        double widthRatio = 0.8}) =>
    Badge(
      shape: BadgeShape.square,
      borderRadius: BorderRadius.circular(5),
      position: BadgePosition.topEnd(top: 2, end: 5),
      padding: const EdgeInsets.all(2),
      badgeColor: Colors.blue,
      showBadge: newDocuments > 0,
      badgeContent: Text(
      '$newDocuments NOVIH',
      style: const TextStyle(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      child:
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
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: titleStyle,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Ukupno dokumenata:',
                        style: italicStyle,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$documents',
                        style: descStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
