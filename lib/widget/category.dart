import 'package:flutter/material.dart';

class category extends StatelessWidget {
  final String title;
  final dynamic detail;

  const category({Key? key, required this.title, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman baru
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detail), 
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.white)
        ),
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            width: 40,
            child: Column(
              children: [
                Icon(Icons.calendar_month, color: Colors.white,),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold ),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


