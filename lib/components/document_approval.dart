import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentApproval extends StatefulWidget {
  final int documentID;
  final String? documentApprovalRemark;

  const DocumentApproval(this.documentID, {this.documentApprovalRemark = '', Key? key}) : super(key: key);

  @override
  State<DocumentApproval> createState() => _DocumentApprovalState();
}

class _DocumentApprovalState extends State<DocumentApproval> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}