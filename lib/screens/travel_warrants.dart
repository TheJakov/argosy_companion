import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

var data = [
  {'person': 'Jakov Kristović', 'date': '05-06-2022', 'destination': 'Zagreb', 'new': false },
  {'person': 'Luka Rokolj', 'date': '15-06-2022', 'destination': 'Glasgow', 'new': false },
  {'person': 'Jack Sparrow', 'date': '02-07-2022', 'destination': 'Black Pearl', 'new': true },
  {'person': 'Davy Jones', 'date': '05-07-2022', 'destination': 'The Flying Dutchman', 'new': true },
  {'person': 'Hector Barbosa', 'date': '23-07-2022', 'destination': 'Isle de Muerte', 'new': true },
];

buildCards(BuildContext context, List<Map<String, Object>> data){
  var cards = <Widget>[];

  if(data.isEmpty) {
    return cards;
  }

  for (var element in data) {
    cards.add(
        buildTravelWarrantCard(
            context, element['person'].toString(), element['date'].toString(),
            element['destination'].toString(), isNew: element['new'] as bool)
    );
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
                      "Putni nalozi",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              ...buildCards(context, data)
            ],
          ),
        ),
      ),
    ));
  }
}

Widget buildTravelWarrantCard(
        BuildContext context, String name, String date, String destination,
        { bool isNew = false,
          TextStyle titleStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle descStyle = const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        TextStyle dateStyle =
            const TextStyle(fontSize: 10, color: Colors.white),
        double widthRatio = 0.8}) =>
    TextButton(
      onPressed: () {
        Navigator.pop(context);
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
                    name,
                    style: titleStyle,
                  ),
                  Badge(
                    showBadge: isNew,
                    shape: BadgeShape.square,
                    borderRadius: BorderRadius.circular(5),
                    position: BadgePosition.topEnd(top: 2, end: 5),
                    padding: const EdgeInsets.all(2),
                    badgeColor: ArgosyCompanionConstants.badgeMainColor,
                    badgeContent: const Text(
                      'NOVO',
                      style: TextStyle(
                          color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Datum:",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(date,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Odredište:",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(destination,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
