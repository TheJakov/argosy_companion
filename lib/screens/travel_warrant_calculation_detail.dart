import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/classes/argosy_companion_util.dart';
import 'package:argosy_companion/classes/bll/travel_warrant_calculation.dart';
import 'package:argosy_companion/components/document_approval.dart';
import 'package:flutter/material.dart';

class TravelWarrantCalculationDetail extends StatefulWidget {
  final TravelWarrantCalculation travelWarrantCalculation;

  const TravelWarrantCalculationDetail(this.travelWarrantCalculation, {Key? key}) : super(key: key);

  @override
  State<TravelWarrantCalculationDetail> createState() => _TravelWarrantCalculationDetailState();
}

class _TravelWarrantCalculationDetailState extends State<TravelWarrantCalculationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Color(ArgosyCompanionConstants.travelWarrantCalculationHex),
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
                      "Obračun putnog naloga",
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
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.person, 'Radnik'),
                          const SizedBox(
                            height: 20,
                          ),
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.datePeriod(), 'Datum putovanja'),
                          const SizedBox(
                            height: 20,
                          ),
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.destination, 'Odredište'),
                          const SizedBox(
                            height: 20,
                          ),
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.reason, 'Razlog'),
                          const SizedBox(
                            height: 20,
                          ),
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.getProjects(), 'Projekti'),
                          const SizedBox(
                            height: 20,
                          ),
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.remark, 'Napomena'),
                          const SizedBox(
                            height: 20,
                          ),
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.meansOfTransportation, 'Prijevozna sredstva'),
                          const SizedBox(
                            height: 20,
                          ),
                          ArgosyCompanionUtil.displayDetailTextComponent(widget.travelWarrantCalculation.advances, 'Akontacije'),
                        ],
                      ),
                    ))),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: DocumentApproval(widget.travelWarrantCalculation.id),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
