import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  Send({Key? key}) : super(key: key);

  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 237, 233, 233),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Send Money"),
              Icon(CupertinoIcons.question_circle,),
            ],
          ),
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 600),
              child: Container(
                color: Colors.blue,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            "Quick Send",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 15, right: 20),
                          child: Container(
                            height: 45,
                            width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.search,
                                      color: Color.fromARGB(255, 177, 168, 168),
                                    ),
                                  ),
                                  hintText: "Find phone number/bank account",
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      height: 1.5,
                                      color: const Color.fromARGB(
                                          255, 177, 168, 168))),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 20),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/logo_bri.png"),
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Progrity",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 20),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/logo_bri.png"),
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Progrity",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 20),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/logo_bri.png"),
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Progrity",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25, top: 20),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/logo_bri.png"),
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Progrity",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 140, top: 30, bottom: 10),
                          child: Row(
                            children: [
                              Text(
                                "VIEW ALL",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.blue,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, top: 20, bottom: 20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/send_to_friend.png",
                                    height: 40,
                                  ),
                                  Text(
                                    "Send to\nfriend",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, top: 20, bottom: 20),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/send_to_bank.png",
                                    height: 40,
                                  ),
                                  Text(
                                    "Send to\nBank",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, top: 20, bottom: 15),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/cash.png",
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Withdraw\ncash",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140, bottom: 10),
                          child: Row(
                            children: [
                              Text(
                                "VIEW ALL",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.blue,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
