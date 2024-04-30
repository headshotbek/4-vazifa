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
              width: 100,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  boxShadow: const [
                    BoxShadow(
                        color: const Color.fromARGB(255, 227, 218, 218),
                        blurRadius: 5),
                  ]),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.download_for_offline_outlined,
                    color: Colors.green,
                    size: 35,
                  ),
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal, child: date()),
                const SizedBox(height: 30),
                const Text(
                  'Your Expenses',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 350,
                  width: 400,
                  child: Image.asset("assets/chart.png"),
                ),
                chart(),
                const SizedBox(height: 20),
                const Text(
                  "10 May, Fri",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                menu()
              ],
            ),
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
              ),
              Icon(
                Icons.stacked_bar_chart_outlined,
                size: 40,
                color: Colors.green,
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

Widget date() {
  return Row(
    children: [
      Container(
        width: 100,
        height: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xff49A078)),
        child: const Center(
          child: Text(
            "24 h",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff49A078), width: 4),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            color: Colors.white),
        child: const Center(
          child: Text(
            "Week",
            style: TextStyle(
                color: Color(0xff49A078),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 100,
        height: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xff49A078)),
        child: const Center(
          child: Text(
            "Month",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 100,
        height: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xff49A078)),
        child: const Center(
          child: Text(
            "Year",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 100,
        height: 50,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xff49A078)),
        child: const Center(
            child: Icon(
          Icons.apps_outlined,
          size: 35,
          color: Colors.white,
        )),
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}

Widget chart() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 130,
        decoration: const BoxDecoration(
            color: Color(0xff49A078),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Grocery",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                "\$300",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
      Container(
        height: 50,
        width: 140,
        decoration: const BoxDecoration(
            color: Color(0xff998FC7),
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Shopping",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                "\$250",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
      Container(
        height: 50,
        width: 130,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Transfer",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                "\$150",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Widget menu() {
  return Column(
    children: [
      Row(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset("assets/dollar.png"),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ahmad Mughal",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                "Transfer",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              )
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          const Text(
            "-\$53.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          )
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset("assets/netflix.png"),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Netflix",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                "Shopping",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              )
            ],
          ),
          const SizedBox(
            width: 170,
          ),
          const Text(
            "-\$45.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          )
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset("assets/food.png"),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Foodpanda",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                "Food",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.grey),
              )
            ],
          ),
          const SizedBox(
            width: 140,
          ),
          const Text(
            "-\$20.00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          )
        ],
      ),
    ],
  );
}
