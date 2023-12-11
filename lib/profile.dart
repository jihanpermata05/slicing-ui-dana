import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key});

  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(124, 225, 223, 223),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 20, 138, 235)),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 125, top: 50),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(109, 34, 33, 33),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 100, top: 8, bottom: 8, right: 10),
                        child: Text(
                          "Bisnis",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 128, top: 53),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(132, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 5, bottom: 5, right: 18),
                        child: Text(
                          "Personal",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/profile.png",
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PROGRITY",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 10,
                                ),
                                child: Text(
                                  "0892***9003",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 90),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, top: 5, bottom: 5, right: 5),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.qr_code_2,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "SHOW MY QR",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 15,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 220, right: 10, left: 10),
                  child: Card(
                    elevation: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 15),
                          child: Text(
                            "Add your email address",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 50),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(141, 153, 153, 153),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 10, right: 50),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 20,
                                width: 100,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Let's get the lastest promo info & updates",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 15),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/profile1.png",
                                    height: 40,
                                  ),
                                  Text(
                                    "Balance",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Rp.7.560",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: const Color.fromARGB(
                                            255, 19, 113, 189)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 60),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/profile2.png",
                                    height: 40,
                                  ),
                                  Text(
                                    "DANA Goals",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Create Goals",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: const Color.fromARGB(
                                            255, 19, 113, 189)),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 35),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/profile3.png",
                                    height: 40,
                                  ),
                                  Text(
                                    "Family Account",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "Let's Activate!",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: const Color.fromARGB(
                                            255, 19, 113, 189)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 15, bottom: 10),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/profile4.png",
                                height: 40,
                              ),
                              Text(
                                "eMAS",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              Text(
                                "Start Invasting",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: const Color.fromARGB(
                                        255, 19, 113, 189)),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                Icons.arrow_circle_down,
                                color: Colors.green,
                                size: 40,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Income",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "Rp.120.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50, top: 15, right: 15, bottom: 15),
                                  child: Icon(
                                    Icons.arrow_circle_up,
                                    color: Colors.orange,
                                    size: 40,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Income",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "Rp.120.000",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/profile5.png",
                                height: 65,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "DIANA is here to help!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                              "Let's chat if you need asisstance."),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.news_solid,
                                    color: Colors.amber,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "My Bills",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.gift_fill,
                                    color: Colors.amber,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Referral Code",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.ticket_fill,
                                    color: Colors.amber,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Enter Promo Code",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10, bottom: 10),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/home8.png",
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Check In to A+ Rewards",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Grab your reward now!",
                                          style: TextStyle(
                                              height: 1.5, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "My Bills",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.security,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Security Settings",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.link,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Linked Accounts",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Verification",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10, bottom: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      "Smart Pay",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 140, top: 10, bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 2, bottom: 2),
                                  child: Text(
                                    "NEW",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 10, top: 10, bottom: 10),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 120, right: 120, top: 10, bottom: 10),
                          child: Text(
                            "LOGOUT",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
