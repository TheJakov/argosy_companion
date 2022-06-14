import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:flutter/material.dart';

var data = [
  {'person': 'Jakov Kristović', 'date': '05-06-2022', 'destination': 'Zagreb' },
  {'person': 'Luka Rokolj', 'date': '15-06-2022', 'destination': 'Glasgow' },
  {'person': 'Jack Sparrow', 'date': '02-07-2022', 'destination': 'Black Pearl' },
  {'person': 'Davy Jones', 'date': '05-07-2022', 'destination': 'The Flying Dutchman' },
  {'person': 'Hector Barbosa', 'date': '23-07-2022', 'destination': 'Isle de Muerte' },
];

buildCards(BuildContext context, List<Map<String, String>> data){
  var cards = <Widget>[];

  if(data.isEmpty) {
    return cards;
  }

  for (var element in data) {
    cards.add(
        buildTravelWarrantCard(
            context, element['person'].toString(),
            element['date'].toString(), element['destination'].toString())
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
        {TextStyle titleStyle = const TextStyle(
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
        color: Color(ArgosyCompanionConstants.putniNalogHex),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
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
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.lightBlue[400],
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
      ),
    );
