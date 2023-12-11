import 'package:flutter/material.dart';
import 'package:workshop/home.dart';

class ViewAll extends StatefulWidget {
  ViewAll({Key? key}) : super(key: key);

  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> with RestorationMixin {
  final RestorableIntN _indexSelected = RestorableIntN(null);

  @override
  String get restorationId => 'choice_chip_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_indexSelected, 'choice_chip');
  }

  @override
  void dispose() {
    _indexSelected.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 236, 236),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text('All Services'),
            ),
            Icon(Icons.search)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      ChoiceChip(
                        label: const Text('All'),
                        selected: _indexSelected.value == 0,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 0 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('My Favourite'),
                        selected: _indexSelected.value == 1,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 1 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Daily'),
                        selected: _indexSelected.value == 2,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 2 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Transfer'),
                        selected: _indexSelected.value == 3,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 3 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Bills'),
                        selected: _indexSelected.value == 4,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 4 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Government Services'),
                        selected: _indexSelected.value == 5,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 5 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Entertainment'),
                        selected: _indexSelected.value == 6,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 6 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Finance'),
                        selected: _indexSelected.value == 7,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 7 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Mobile Services'),
                        selected: _indexSelected.value == 8,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 8 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Charity'),
                        selected: _indexSelected.value == 9,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 9 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Transportation'),
                        selected: _indexSelected.value == 10,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 10 : 0;
                          });
                        },
                      ),
                      ChoiceChip(
                        label: const Text('Shopping'),
                        selected: _indexSelected.value == 11,
                        selectedColor: Colors.blue,
                        onSelected: (value) {
                          setState(() {
                            _indexSelected.value = value ? 11 : -1;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // bagian All
            _indexSelected.value == 0
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Favourite",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/home6.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Pulsa & Data",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/home7.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Apple Zone",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/home8.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "A+ Rewards",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Image.asset(
                                              "assets/home9.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Games",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Image.asset(
                                                "assets/home10.png",
                                                height: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "DANA Deals",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Image.asset(
                                                "assets/home11.png",
                                                height: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Electricity",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Image.asset(
                                                "assets/home12.png",
                                                height: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "DANA Kaget",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, right: 10),
                                                child: Icon(
                                                  Icons.edit,
                                                  color: Colors.blue,
                                                  size: 30,
                                                )),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 10,
                                                top: 5,
                                                bottom: 5,
                                              ),
                                              child: Text(
                                                "Edit",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daily",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/home10.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "DANA Deals",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/daily1.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Loyalty",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/home8.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "A+ Rewards",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Image.asset(
                                              "assets/daily2.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Nearby",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 30),
                                            child: Image.asset(
                                              "assets/daily3.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "DANA Points",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, bottom: 10),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Image.asset(
                                                "assets/daily4.png",
                                                height: 40,
                                              ),
                                            ),
                                            Text(
                                              "Send to e-\nWallet",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20),
                                              child: Image.asset(
                                                "assets/daily5.png",
                                                height: 35,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Electric\nMoney",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Transfer",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/home12.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "DANA Kaget",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/transfer1.png",
                                              height: 40,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Cash Out",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/transfer2.png",
                                              height: 40,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Split Bill",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Image.asset(
                                              "assets/transfer3.png",
                                              height: 40,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Send to Chat",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/transfer4.png",
                                                height: 40,
                                              ),
                                              Text(
                                                "Send to Bank",
                                                style: TextStyle(fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/transfer5.png",
                                                height: 40,
                                              ),
                                              Text(
                                                "E-Commerce",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Image.asset(
                                                "assets/transfer6.png",
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                "Withdraw\nCash",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/transfer7.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5, bottom: 10),
                                              child: Text(
                                                "Send to Group",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bills",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/bills1.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "My Bills",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/home11.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Electricity",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/bills2.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Water",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Image.asset(
                                              "assets/bills3.png",
                                              height: 30,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Telkom",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Image.asset(
                                                  "assets/bills4.png",
                                                  height: 30,
                                                ),
                                                Text(
                                                  "PGN Gas",
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/bills5.png",
                                                    height: 35,
                                                  ),
                                                  Text(
                                                    "Internet &\nCable TV",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Image.asset(
                                                  "assets/bills6.png",
                                                  height: 30,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: Text(
                                                    "Installment",
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/bills7.png",
                                                    height: 30,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Text(
                                                      "Credit\nCard",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Image.asset(
                                                  "assets/bills8.png",
                                                  height: 30,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: Text(
                                                    "e-Samsat",
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 29),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                    "assets/bills9.png",
                                                    height: 35,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Text(
                                                      "SIGNAL",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 13),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Image.asset(
                                                    "assets/bills10.png",
                                                    height: 40,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: Text(
                                                    "Maintenance\nFees",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Image.asset(
                                                  "assets/bills11.png",
                                                  height: 30,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: Text(
                                                    "Education",
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/bills12.png",
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "PLN Non\nTaglis",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 40),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/bills13.png",
                                                height: 35,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  "BPJS\nKetenagakerjaan",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Government Service",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/gs1.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                "PBB",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/gs2.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                "PBB DIY",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/gs3.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Pajak Daerah",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/gs4.png",
                                            height: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Retribusi",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/gs5.png",
                                              height: 40,
                                            ),
                                            Text(
                                              "Penerimaan\nNegara",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/gs6.png",
                                                height: 40,
                                              ),
                                              Text(
                                                "SIM",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 45),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/gs7.png",
                                                height: 45,
                                              ),
                                              Text(
                                                "Passport",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 45),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/gs8.png",
                                                height: 40,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                ),
                                                child: Text(
                                                  "SBN",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/gs9.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Text(
                                            "E-Tilang",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Entertainment",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/home7.png",
                                            height: 40,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            child: Text(
                                              "Apple Zone",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/ent1.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                "DANA Poly",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/ent2.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Digital Voucher",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/ent3.png",
                                            height: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Explore\nWisata",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10, left: 10),
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/home9.png",
                                              height: 40,
                                            ),
                                            Text(
                                              "Games",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/ent2.png",
                                                height: 40,
                                              ),
                                              Text(
                                                "Item Digital",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 45),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/ent4.png",
                                                height: 45,
                                              ),
                                              Text(
                                                "Mini Games",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 5),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/ent5.png",
                                                height: 30,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 10,
                                                ),
                                                child: Text(
                                                  "TIX ID",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/ent6.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Text(
                                            "Vidio",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Finance",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/profile4.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "eMAS",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 35, top: 10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/finance1.png",
                                              height: 30,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "DANA Bisnis",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/finance2.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Bank Services",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, top: 10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/profile2.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Text(
                                                "DANA\nGoals",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/profile3.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Family\nAccounts",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile Services",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/ms1.png",
                                            height: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "eSIM\nSmartfren",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 35),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/home6.png",
                                              height: 35,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Pulsa & Data",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/ms2.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Mobile\nPostpaid",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Insurance",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/insurance1.png",
                                            height: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "DANA Siaga",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/insurance2.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Pay Insurance",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: Image.asset(
                                                "assets/insurance3.png",
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "BPJS Kesehatan",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Charity",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/charity1.png",
                                            height: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "DANA Donasi",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 5),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/charity2.png",
                                              height: 35,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Dompet Dhuafa",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Transportation",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/transport1.png",
                                              height: 40,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Parking",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 60, top: 5),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/transport2.png",
                                              height: 35,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Text(
                                                "Parkee",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shopping",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage:
                                                AssetImage("assets/home5.jpg"),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Lazada 11.11",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : SizedBox(),

            // bagian my favourite
            _indexSelected.value == 1
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Favourite",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/home6.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Pulsa & Data",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/home7.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Apple Zone",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/home8.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "A+ Rewards",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Image.asset(
                                          "assets/home9.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Games",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Image.asset(
                                            "assets/home10.png",
                                            height: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "DANA Deals",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Image.asset(
                                            "assets/home11.png",
                                            height: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Electricity",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Image.asset(
                                            "assets/home12.png",
                                            height: 30,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "DANA Kaget",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, right: 10),
                                            child: Icon(
                                              Icons.edit,
                                              color: Colors.blue,
                                              size: 30,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "Edit",
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            // bagian daily
            _indexSelected.value == 2
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/home10.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "DANA Deals",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/daily1.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Loyalty",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/home8.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "A+ Rewards",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Image.asset(
                                          "assets/daily2.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Nearby",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Image.asset(
                                          "assets/daily3.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "DANA Points",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, bottom: 10),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Image.asset(
                                            "assets/daily4.png",
                                            height: 40,
                                          ),
                                        ),
                                        Text(
                                          "Send to e-\nWallet",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: Image.asset(
                                            "assets/daily5.png",
                                            height: 35,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "Electric\nMoney",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            //bagian transfer
            _indexSelected.value == 3
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Transfer",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/home12.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "DANA Kaget",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/transfer1.png",
                                          height: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Cash Out",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/transfer2.png",
                                          height: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Split Bill",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Image.asset(
                                          "assets/transfer3.png",
                                          height: 40,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Send to Chat",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/transfer4.png",
                                            height: 40,
                                          ),
                                          Text(
                                            "Send to Bank",
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/transfer5.png",
                                            height: 40,
                                          ),
                                          Text(
                                            "E-Commerce",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Image.asset(
                                            "assets/transfer6.png",
                                            height: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Text(
                                            "Withdraw\nCash",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/transfer7.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 10),
                                          child: Text(
                                            "Send to Group",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            //bagian Bills
            _indexSelected.value == 4
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bills",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/bills1.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "My Bills",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/home11.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Electricity",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Image.asset(
                                          "assets/bills2.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Water",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                        ),
                                        child: Image.asset(
                                          "assets/bills3.png",
                                          height: 30,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Telkom",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/bills4.png",
                                              height: 30,
                                            ),
                                            Text(
                                              "PGN Gas",
                                              style: TextStyle(fontSize: 13),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/bills5.png",
                                                height: 35,
                                              ),
                                              Text(
                                                "Internet &\nCable TV",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/bills6.png",
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Installment",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/bills7.png",
                                                height: 30,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  "Credit\nCard",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/bills8.png",
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "e-Samsat",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 29),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                "assets/bills9.png",
                                                height: 35,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  "SIGNAL",
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Image.asset(
                                                "assets/bills10.png",
                                                height: 40,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Maintenance\nFees",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/bills11.png",
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 5),
                                              child: Text(
                                                "Education",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 13),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/bills12.png",
                                          height: 30,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "PLN Non\nTaglis",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/bills13.png",
                                            height: 35,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: Text(
                                              "BPJS\nKetenagakerjaan",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            //bagian government services
            _indexSelected.value == 5
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Government Service",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/gs1.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            "PBB",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/gs2.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            "PBB DIY",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/gs3.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "Pajak Daerah",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/gs4.png",
                                        height: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Retribusi",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/gs5.png",
                                          height: 40,
                                        ),
                                        Text(
                                          "Penerimaan\nNegara",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/gs6.png",
                                            height: 40,
                                          ),
                                          Text(
                                            "SIM",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/gs7.png",
                                            height: 45,
                                          ),
                                          Text(
                                            "Passport",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/gs8.png",
                                            height: 40,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 5,
                                            ),
                                            child: Text(
                                              "SBN",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/gs9.png",
                                      height: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                      ),
                                      child: Text(
                                        "E-Tilang",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            // bagian Entertainment
            _indexSelected.value == 6
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Entertainment",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/home7.png",
                                        height: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: Text(
                                          "Apple Zone",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/ent1.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            "DANA Poly",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/ent2.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "Digital Voucher",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/ent3.png",
                                        height: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Explore\nWisata",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 10),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          "assets/home9.png",
                                          height: 40,
                                        ),
                                        Text(
                                          "Games",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/ent2.png",
                                            height: 40,
                                          ),
                                          Text(
                                            "Item Digital",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/ent4.png",
                                            height: 45,
                                          ),
                                          Text(
                                            "Mini Games",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 5),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/ent5.png",
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "TIX ID",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/ent6.png",
                                      height: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                      ),
                                      child: Text(
                                        "Vidio",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            // bagian Finance
            _indexSelected.value == 7
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Finance",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/profile4.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "eMAS",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 35, top: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/finance1.png",
                                          height: 30,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "DANA Bisnis",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/finance2.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Bank Services",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/profile2.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          child: Text(
                                            "DANA\nGoals",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/profile3.png",
                                      height: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Text(
                                        "Family\nAccounts",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            //bagian Mobile Service
            _indexSelected.value == 8
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mobile Services",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/ms1.png",
                                        height: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "eSIM\nSmartfren",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/home6.png",
                                          height: 35,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Pulsa & Data",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/ms2.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Mobile\nPostpaid",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            //bagian Charity
            _indexSelected.value == 9
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Charity",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/charity1.png",
                                        height: 40,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "DANA Donasi",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15, top: 5),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/charity2.png",
                                          height: 35,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Dompet Dhuafa",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            // bagian Transportation
            _indexSelected.value == 10
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Transportation",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/transport1.png",
                                          height: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Parking",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 60, top: 5),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/transport2.png",
                                          height: 35,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Parkee",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),

            // bagian Shopping
            _indexSelected.value == 11
                ? Card(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shopping",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage("assets/home5.jpg"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Lazada 11.11",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
