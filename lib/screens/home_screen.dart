import 'package:flutter/material.dart';
import 'package:travel/widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  List<String> cNames = [
    "Spain",
    "Italy",
    "United States",
    "Australia",
    "Cape Town",
    "Japan",
  ];

  List<String> category = [
    "Best Places",
    "Most Visited",
    "Favourites",
    "New Added",
    "Hotels",
    "Restaurants",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HomeAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("postScreen");
                      },
                      child: Container(
                        width: 160,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image:
                                    AssetImage("images/city${index + 1}.jpg"),
                                fit: BoxFit.cover,
                                opacity: 0.7)),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.bookmark_border_outlined,
                                  color: Colors.white, size: 30),
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "${cNames[index]}",
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  for (int i = 0; i < 6; i++)
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                              )
                            ]),
                        child: Text("${category[i]}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)))
                ]),
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("postScreen");
                          },
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "images/city${index + 1}.jpg"),
                                    fit: BoxFit.cover,
                                    opacity: 0.8),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${cNames[index]}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Icon(Icons.more_vert, size: 30)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            Text("4.5",
                                style: TextStyle(fontWeight: FontWeight.w500))
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
