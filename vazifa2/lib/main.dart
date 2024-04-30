import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 75,
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
          title: const Text(
            "Cards",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
          actions: [
            Container(
              width: 110,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.grey)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.green,
                    size: 35,
                  ),
                  Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )
                ],
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9))),
                clipBehavior: Clip.hardEdge,
                child: Image.asset("assets/card.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.snow,
                        size: 70,
                        color: Colors.white,
                      ),
                      const Text(
                        " Freeze!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/check.png"))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 65,
                          width: 65,
                          child: Image.asset("assets/stop.png")),
                      const Text(
                        " Deactivate",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset("assets/checktrue.png"))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.green, width: 3)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 7, left: 20, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Monthly Budget",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$1,456",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "May 2023 current",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          Text(
                            "\$650 left",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Previous Budget",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$1,420",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "April 2023",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          Text(
                            "\$10 left",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                size: 40,
              ),
              Icon(
                Icons.credit_card,
                size: 40,
                color: Colors.green,
              ),
              Icon(
                Icons.stacked_bar_chart_outlined,
                size: 40,
              ),
              Icon(
                Icons.settings,
                size: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
