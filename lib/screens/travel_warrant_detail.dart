import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/classes/argosy_companion_util.dart';
import 'package:argosy_companion/classes/bll/travel_warrant.dart';
import 'package:argosy_companion/components/document_approval.dart';
import 'package:flutter/material.dart';

class TravelWarrantDetail extends StatefulWidget {
  final TravelWarrant travelWarrant;

  const TravelWarrantDetail(this.travelWarrant, {Key? key}) : super(key: key);

  @override
  State<TravelWarrantDetail> createState() => _TravelWarrantDetailState();
}

class _TravelWarrantDetailState extends State<TravelWarrantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Color(ArgosyCompanionConstants.travelWarrantHex),
              child: Row(
                children: [
                  TextButton(
                      child: const Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      "Zahtjev putni nalog",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.74,
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.person, 'Radnik'),
                      const SizedBox(
                        height: 20,
                      ),
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.datePeriod(), 'Datum putovanja'),
                      const SizedBox(
                        height: 20,
                      ),
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.destination, 'Odredište'),
                      const SizedBox(
                        height: 20,
                      ),
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.reason, 'Razlog'),
                      const SizedBox(
                        height: 20,
                      ),
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.getProjects(), 'Projekti'),
                      const SizedBox(
                        height: 20,
                      ),
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.remark, 'Napomena'),
                      const SizedBox(
                        height: 20,
                      ),
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.meansOfTransportation, 'Prijevozna sredstva'),
                      const SizedBox(
                        height: 20,
                      ),
                      ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrant.advances, 'Akontacije'),
                    ],
                  ),
                ))),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: DocumentApproval(widget.travelWarrant.id),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
