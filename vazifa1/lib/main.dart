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
          title: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 202, 201, 201)),
                clipBehavior: Clip.hardEdge,
                child: Image.asset("assets/profile.png"),
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SHAHZAIB",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Good Morning!",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          actions: const [
            Icon(
              Icons.notifications,
              size: 35,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 280,
                    width: 280,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Total Balance",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "\$7,899.00",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff49A078)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hide ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700]),
                            ),
                            Icon(CupertinoIcons.eye_slash,
                                color: Colors.grey[700])
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 120,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff49A078)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/send.png"),
                        ),
                        const Text(
                          "Send",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff49A078)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/recive.png"),
                        ),
                        const Text(
                          "Recive",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff49A078)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/swap.png"),
                        ),
                        const Text(
                          "Swap",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 110,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xff49A078)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset("assets/plus.png"),
                        ),
                        const Text(
                          "Deposit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Recent Transaction",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              for (var i = 0; i < 3; i++) moneyInfo()
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
                color: Colors.green,
              ),
              Icon(
                Icons.credit_card,
                size: 40,
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

Widget moneyInfo() {
  return Column(
    children: [
      Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset("assets/kirim.png"),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "From Ahmad Mughal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "20 Jan 2024 at 10:00 PM",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const Text(
            "+\$3,456.00",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset("assets/chiqim.jpg"),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "To Sara Gujjar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "20 Jan 2024 at 10:00 PM",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          const Text(
            "+\$1,456.00",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  );
}
