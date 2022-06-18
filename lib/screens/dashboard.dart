import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/screens/incoming_invoices.dart';
import 'package:argosy_companion/screens/output_invoices.dart';
import 'package:argosy_companion/screens/travel_warrant_calculation.dart';
import 'package:argosy_companion/screens/travel_warrants.dart';
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Odobravanje dokumenata",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.account_circle_rounded,
                    size: 28,
                    color: Colors.black,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              buildDashboardItem(
                  context,
                  Color(ArgosyCompanionConstants.outputInvoiceHex),
                  "Izlazni računi",
                  1,
                  0,
                  const OutputInvoices()),
              const SizedBox(
                height: 15,
              ),
              buildDashboardItem(
                  context,
                  Color(ArgosyCompanionConstants.incomingInvoiceHex),
                  "Ulazni računi",
                  3,
                  1,
                  const IncomingInvoices()),
              const SizedBox(
                height: 15,
              ),
              buildDashboardItem(
                  context,
                  Color(ArgosyCompanionConstants.travelWarrantHex),
                  "Putni nalozi",
                  6,
                  3,
                  const TravelWarrants()),
              const SizedBox(
                height: 15,
              ),
              buildDashboardItem(
                  context,
                  Color(ArgosyCompanionConstants.travelWarrantCalculationHex),
                  "Obračun putnih naloga",
                  2,
                  1,
                  const TravelWarrantCalculation()),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget buildDashboardItem(BuildContext context, Color backgroundColor,
        String title, int documents, int newDocuments, Widget screen,
        {TextStyle titleStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle descStyle = const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        TextStyle dateStyle =
            const TextStyle(fontSize: 10, color: Colors.white),
        TextStyle italicStyle =
            const TextStyle(color: Colors.white, fontSize: 16),
        double widthRatio = 0.8}) =>
    Badge(
      shape: BadgeShape.square,
      borderRadius: BorderRadius.circular(5),
      position: BadgePosition.topEnd(top: 2, end: 5),
      padding: const EdgeInsets.all(2),
      badgeColor: ArgosyCompanionConstants.badgeMainColor,
      showBadge: newDocuments > 0,
      badgeContent: Text(
        '$newDocuments NOVIH',
        style: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
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
