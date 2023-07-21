import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg.jpg"),
            fit: BoxFit.cover,
            opacity: 0.8),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "The World !",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                highlightColor: Colors.white,
                onTap: () {
                  Navigator.of(context).pushNamed("homePage");
                },
                child: Ink(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 22,
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
