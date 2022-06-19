import 'package:argosy_companion/classes/travel_warrant.dart';
import 'package:flutter/material.dart';

class TravelWarrantDetail extends StatefulWidget {
  final TravelWarrant travelWarrant;

  const TravelWarrantDetail(
      this.travelWarrant,
      {Key? key}) : super(key: key);

  @override
  State<TravelWarrantDetail> createState() => _TravelWarrantDetailState();
}

class _TravelWarrantDetailState extends State<TravelWarrantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      "Zahtjev putni nalog",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child:
                    SingleChildScrollView(
                      child:
                          Column (
                            children: [
                              Row(
                                children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(color: Colors.redAccent),
                                  child: Text('${widget.travelWarrant.person}\nOvako se pristupa predanom prop u state\nOvdje je list view'
                                      + '\na\nb\nc\nd\ne\nf\ng\nh\na\nb\nc\nd\ne\nf\ng\nh\na\nb\nc\nd\ne\nf\ng\nh'
                                      + '\na\nb\nc\nd\ne\nf\ng\nh\na\nb\nc\nd\ne\nf\ng\nh\na\nb\nc\nd\ne\nf\ng\nh'),
                                ),
                              ])
                            ],
                          )
                    )
              ),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.lightBlueAccent),
                    child: const Text('Ovdje ide dio s odobravanjem'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
