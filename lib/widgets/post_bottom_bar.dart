import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  const PostBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget imageBottom(image) {
      return Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Expanded(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            image,
            height: 90,
            width: 120,
            fit: BoxFit.cover,
          ),
        )),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      decoration: BoxDecoration(
          color: Color(0xFFEDf2f6),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Barcelona, Spain",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 25),
                      Text("4.5", style: TextStyle(fontWeight: FontWeight.w600))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Barcelona is a city on the northeastern coast of Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second most populous municipality of Spain.",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    wordSpacing: 1.5),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  imageBottom("images/city4.jpg"),
                  imageBottom("images/city5.jpg"),
                  Expanded(
                      child: Container(
                    width: 120,
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/city1.jpg"),
                            fit: BoxFit.cover,
                            opacity: 0.4)),
                    child: Text(
                      "10+",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 80,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 4)
                            ]),
                        child: Icon(Icons.bookmark_outline, size: 40),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 4)
                            ]),
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ]),
              )
            ],
          ),
        )
      ]),
    );
  }
}
