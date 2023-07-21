import 'package:flutter/material.dart';

class PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 6,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Icon(Icons.arrow_back_ios, size: 28),
              ),
            ),
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
                    color: Colors.white,
                    blurRadius: 6,
                  )
                ],
              ),
              child: Icon(Icons.favorite_outline, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
