import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    ),
                  ]),
              child: Icon(Icons.sort_rounded, size: 30),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Color(0xFFF65959)),
              Text("New York, USA",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    ),
                  ]),
              child: Icon(Icons.search, size: 28),
            ),
          )
        ],
      ),
    );
  }
}
