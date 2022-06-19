import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/screens/travel_warrant_detail.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:argosy_companion/classes/travel_warrant.dart';

buildCards(BuildContext context, List<TravelWarrant> data) {
  var cards = <Widget>[];

  if (data.isEmpty) {
    return cards;
  }

  for (var element in data) {
    cards.add(buildTravelWarrantCard(context, element));
  }

  return cards;
}

class TravelWarrants extends StatefulWidget {
  const TravelWarrants({Key? key}) : super(key: key);

  @override
  State<TravelWarrants> createState() => _TravelWarrantsState();
}

class _TravelWarrantsState extends State<TravelWarrants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
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
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      "Putni nalozi",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              ...buildCards(context, TravelWarrant.fetchDataTest())
            ],
          ),
        ),
      ),
    ));
  }
}

Widget buildTravelWarrantCard(
    BuildContext context,
    TravelWarrant travelWarrant,
    {
      TextStyle titleStyle = const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      TextStyle descStyle = const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      TextStyle dateStyle =
          const TextStyle(fontSize: 10, color: Colors.white),
      double widthRatio = 0.8}) =>
    TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => TravelWarrantDetail(travelWarrant)));
      },
      child: Card(
        color: Color(ArgosyCompanionConstants.travelWarrantHex),
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
                    travelWarrant.person,
                    style: titleStyle,
                  ),
                  Badge(
                    showBadge: travelWarrant.isNew,
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
                            child: Text(travelWarrant.datePeriod(),
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
                            child: Text(travelWarrant.destination,
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
                            child: Text(travelWarrant.reason,
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
                  if (travelWarrant.remark.isNotEmpty)
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
                              child: Text(travelWarrant.remark,
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
