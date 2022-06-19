import 'package:argosy_companion/classes/argosy_companion_constants.dart';
import 'package:argosy_companion/classes/argosy_companion_util.dart';
import 'package:argosy_companion/classes/travel_warrant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                height: MediaQuery.of(context).size.height * 0.75,
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Radnik",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.person)
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Datum putovanja",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.datePeriod())
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Odredište",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.destination)
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Razlog",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.reason)
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Projekti",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.getProjects())
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Napomena",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.remark)
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Prijevozna sredstva",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.meansOfTransportation)
                          ],
                        ),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Akontacije",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)),
                            const SizedBox(
                              height: 5,
                            ),
                            ArgosyCompanionUtil.displayDetailTextProperty(widget.travelWarrant.advances)
                          ],
                        ),
                      ]),
                    ],
                  ),
                ))),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.edit_note_rounded,
                            size: 35,
                            color: Colors.black
                          ),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.greenAccent,
                          child: Row(
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: const Size(50, 30),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      alignment: Alignment.centerLeft),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    alignment: Alignment.center,
                                    color: Colors.lightBlueAccent,
                                    child: Text(
                                      "ODOBRI",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: const Size(50, 30),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      alignment: Alignment.centerLeft),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.08,
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    alignment: Alignment.center,
                                    color: Colors.redAccent,
                                    child: Text(
                                      "ODBIJ",
                                      style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
