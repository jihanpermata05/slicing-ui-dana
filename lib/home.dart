import 'package:flutter/material.dart';
import 'package:workshop/send.dart';
import 'package:workshop/view_all.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController(initialPage: 0);


  void initState() {
    _pageController.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 245, 245),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 18, 141, 241),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/logo.png",
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "Rp",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 239, 236, 236)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                "7.560",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.visibility_off,
                                color: Colors.white,
                                size: 17,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.email_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Image.asset(
                                "assets/home1.png",
                                height: 57,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 100),
                              child: Text(
                                "Scan",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 15),
                              child: Image.asset(
                                "assets/home2.png",
                                height: 55,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 5, bottom: 100),
                              child: Text(
                                "Top Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 30,
                                top: 15,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Send()));
                                },
                                child: Image.asset(
                                  "assets/home3.png",
                                  height: 65,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 100),
                              child: Text(
                                "Send",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Image.asset(
                                "assets/home4.png",
                                height: 65,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 100),
                              child: Text(
                                "Request",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10, top: 190, bottom: 270, left: 10),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 10,
                              ),
                              child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("assets/home5.jpg")),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 35),
                                  child: Text(
                                    "Lazada 11.11",
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Hemat s/d Rp40Rb + 50%",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 219, 167, 13)),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 20, bottom: 10),
                              child: Text(
                                "SERBU",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                "assets/home6.png",
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Text(
                                "Pulsa & Data",
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                "assets/home7.png",
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Text(
                                "Apple Zone",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                "assets/home8.png",
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Text(
                                "A+ Reward",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                "assets/home9.png",
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Text(
                                "Games",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 20),
                              child: Image.asset(
                                "assets/home10.png",
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 5, bottom: 20),
                              child: Text(
                                "DANA Deals",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 20),
                              child: Image.asset(
                                "assets/home11.png",
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 5, bottom: 20),
                              child: Text(
                                "Electricity",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: Image.asset(
                                "assets/home12.png",
                                height: 45,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 5, bottom: 20),
                              child: Text(
                                "DANA Kaget",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAll()));
                                },
                                child: Image.asset(
                                  "assets/home13.png",
                                  height: 45,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 5, bottom: 20),
                              child: Text(
                                "View All",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 460, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 23,
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Progrity",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Received",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "DANA Kaget",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 227, 176, 24)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("16/11"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 23,
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Progrity",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Received",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "DANA Kaget",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 227, 176, 24)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("16/11"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, top: 5, bottom: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 23,
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text(
                                      "Progrity",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "Received",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "DANA Kaget",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 227, 176, 24)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("16/11"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        iklanSection("assets/iklan1.jpg"),
                        iklanSection("assets/iklan1.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Card(
                        child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      "Bye Modus Penipuan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Cek tips aman DANA yuk!",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 125, 124, 124)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Serbu Diskon Lazada",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Pakai DANA Diskon s/d Rp40RB!",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 125, 124, 124)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 10, top: 10, bottom: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/profile.jpg"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Proteksi Berkuliner",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 17),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 5,
                                      ),
                                      child: Text(
                                        "Bikin kulineran makin aman",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 125, 124, 124)),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "VIEW ALL NEWS",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nearby",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    right: 10,
                                  ),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "EXPLORE",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Find DANA merchants in your area!",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 103, 102, 102)),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                nearbySection("assets/alfamart.png", "948 m",
                                    "4.7", "AM - PKU", "Supermarket"),
                                nearbySection("assets/alfamart.png", "948 m",
                                    "4.7", "AM - PKU", "Supermarket"),
                                nearbySection("assets/alfamart.png", "948 m",
                                    "4.7", "AM - PKU", "Supermarket"),
                                nearbySection("assets/alfamart.png", "948 m",
                                    "4.7", "AM - PKU", "Supermarket"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "More For You",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      "VIEW ALL",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.blue),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Want more good stuff? Take a look!",
                            style: TextStyle(
                                fontSize: 15,
                                color:
                                    const Color.fromARGB(255, 126, 126, 126)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/iklan2.png",
                                height: 100,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset(
                                  "assets/dana.png",
                                  height: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "LEARN MORE",
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, top: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.shield,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("9",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                                //
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Icon(
                                    Icons.shield,
                                    color: Colors.red,
                                    size: 30,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                                //
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Icon(
                                    Icons.lightbulb,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("1",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, top: 5, bottom: 20),
                            child: Row(
                              children: [
                                Text(
                                  "Activity\nProtected",
                                  style: TextStyle(fontSize: 16, height: 1),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 35,
                                  ),
                                  child: Text(
                                    "Suspicious\nActivity",
                                    style: TextStyle(fontSize: 16, height: 1),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 35),
                                  child: Text(
                                    "Security\nSuggestions",
                                    style: TextStyle(fontSize: 16, height: 1),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Text(
                                  "Securing account & transactions in",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 10),
                                child: Text(
                                  "the last 30 days.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      "DANA Indonesia terdaftar dan diawasi oleh",
                      style: TextStyle(fontSize: 15),
                    )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90, top: 5),
                        child: Image.asset(
                          "assets/bi.png",
                          height: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Image.asset(
                          "assets/kominfo.png",
                          height: 55,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column nearbySection(
      String gambar, String jarak, String rating, String alamat, String toko) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: Image.asset(
            gambar,
            height: 130,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 5, left: 10, bottom: 5, right: 10),
                  child: Text(
                    jarak,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 10, bottom: 5, right: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Text(
                            rating,
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Text(
            alamat,
            maxLines: 2,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
          child: Text(
            toko,
            style: TextStyle(color: const Color.fromARGB(255, 130, 129, 129)),
          ),
        )
      ],
    );
  }

  iklanSection(String image) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          image,
          width: 370,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
