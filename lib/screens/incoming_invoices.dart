import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '../classes/argosy_companion_constants.dart';

var data = [
  {
    'supplier': 'FOING NOVA D.O.O',
    'type': 'RAČUN ULAZNI (sa PDV) bez veze na ugovor',
    'amount': '456,79',
    'new': false
  },
  {
    'supplier': 'Tia Dalma',
    'type': 'Jar of Dirt',
    'amount': '452,34',
    'new': false
  },
  {
    'supplier': 'East India Trading Company',
    'type': 'Dead Man\'s chest',
    'amount': '4564,75',
    'new': true
  },
  {
    'supplier': 'James Norrington',
    'type': 'Sword of returned honour',
    'amount': '456,79',
    'new': false
  },
  {
    'supplier': 'FOING NOVA D.O.O',
    'type': 'RAČUN ULAZNI (sa PDV) bez veze na ugovor',
    'amount': '456,79',
    'new': true
  },
];

buildCards(BuildContext context, List<Map<String, Object>> data) {
  var cards = <Widget>[];

  if (data.isEmpty) {
    return cards;
  }

  for (var element in data) {
    cards.add(buildIncomingInvoiceCard(context, element['supplier'].toString(),
        element['type'].toString(), element['amount'].toString(),
        isNew: element['new'] as bool));
  }

  return cards;
}

class IncomingInvoices extends StatefulWidget {
  const IncomingInvoices({Key? key}) : super(key: key);

  @override
  State<IncomingInvoices> createState() => _IncomingInvoicesState();
}

class _IncomingInvoicesState extends State<IncomingInvoices> {
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
                      "Ulazni računi",
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

Widget buildIncomingInvoiceCard(
        BuildContext context, String supplier, String type, String amount,
        {bool isNew = false,
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
        color: Color(ArgosyCompanionConstants.incomingInvoiceHex),
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
                    supplier,
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
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Vrsta:",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(type,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ],
                        ),
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
                          const Text("Iznos:",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('$amount kn',
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
