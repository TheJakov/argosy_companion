import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/classes/travel_warrant_calculation.dart';

buildCards(BuildContext context, List<TravelWarrantCalculation> data) {
  var cards = <Widget>[];

  if (data.isEmpty) {
    return cards;
  }

  for (var element in data) {
    cards.add(buildTravelWarrantCalculationCard(context, element));
  }

  return cards;
}

class TravelWarrantsCalculations extends StatefulWidget {
  const TravelWarrantsCalculations({Key? key}) : super(key: key);

  @override
  State<TravelWarrantsCalculations> createState() =>
      _TravelWarrantsCalculationState();
}

class _TravelWarrantsCalculationState extends State<TravelWarrantsCalculations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                      child: const Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      "Obračun putnog naloga",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              ...buildCards(context, TravelWarrantCalculation.fetchDataTest())
            ],
          ),
        ),
      ),
    ));
  }
}

Widget buildTravelWarrantCalculationCard(
    BuildContext context,
    TravelWarrantCalculation travelWarrantCalculation,
    {
      TextStyle titleStyle = const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      TextStyle descStyle = const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      TextStyle dateStyle =
          const TextStyle(fontSize: 10, color: Colors.white),
      double widthRatio = 0.8
    }) =>
    TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Card(
        color: Color(ArgosyCompanionConstants.travelWarrantCalculationHex),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    travelWarrantCalculation.person,
                    style: titleStyle,
                  ),
                  Badge(
                    showBadge: travelWarrantCalculation.isNew,
                    shape: BadgeShape.square,
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition.topEnd(top: 2, end: 5),
                    padding: const EdgeInsets.all(2),
                    badgeColor: ArgosyCompanionConstants.badgeMainColor,
                    badgeContent: const Text(
                      'NOVO',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.24,
                            child: const Text("Datum:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.62,
                            child: Text(travelWarrantCalculation.datePeriod(),
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.24,
                            child: const Text("Odredište:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.62,
                            child: Text(travelWarrantCalculation.destination,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.24,
                            child: const Text("Razlog:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.62,
                            child: Text(travelWarrantCalculation.reason,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (travelWarrantCalculation.remark.isNotEmpty)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: const Text("Napomena:",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.62,
                              child: Text(travelWarrantCalculation.remark,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                            ),
                          ],
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
