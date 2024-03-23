import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cusomized_note extends StatelessWidget {
  const Cusomized_note({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 70),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Flutter tips",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Build your carrer with Tony mikhael",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 22, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      size: 35,
                      color: Colors.black,
                    )),
                Text(
                  "2 may 2024",
                  style: TextStyle(color: Colors.black.withOpacity(0.5)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
