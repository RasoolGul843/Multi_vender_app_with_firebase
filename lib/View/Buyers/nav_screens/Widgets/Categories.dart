import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> Categories = [
    "Food",
    "Vegetable",
    "Egg",
    "Tea",
    "Food",
    "Vegetable",
    "Egg",
    "Tea"
  ];
  CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: GoogleFonts.poppins(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700),
          ),
          Container(
            height: 40,
            child: Row(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: Categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ActionChip(
                                backgroundColor: Colors.yellow.shade900,
                                onPressed: () {},
                                label: Text(
                                  Categories[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                )),
                          );
                        })),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          )
        ],
      ),
    );
  }
}
