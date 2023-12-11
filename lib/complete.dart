import 'package:flutter/material.dart';
import 'package:workshop/detail_complete.dart';

class Complete extends StatefulWidget {
  Complete({Key? key}) : super(key: key);

  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset("assets/banner.png")),
            ),
            Divider(
              thickness: 1,
            ),
            listSection("assets/qris.png", "MEOONG PET SHOP",
                "13 Nov 2023 - 17:52", "-Rp22.000"),
            listSection("assets/qris.png", "KANTIN RETYAN",
                "13 Nov 2023 - 12:02", "-Rp3.500"),
            listSection("assets/logo_topup.png", "Top Up",
                "11 Nov 2023 - 15:32", "-Rp220.000"),
            listSection("assets/kantin.png", "Kantin Pakde",
                "07 Nov 2023 - 12:52", "-Rp20.000"),
            listSection("assets/logo_send.png", "Send Money",
                "29 Nov 2023 - 20:52", "-Rp57.000"),
            listSection("assets/qris.png", "MEOONG PET SHOP",
                "13 Nov 2023 - 17:52", "-Rp22.000"),
          ],
        ),
      ),
    );
  }

  Column listSection(String gambar, String nama, String tanggal, String harga) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    gambar,
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nama,
                          style: TextStyle(fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            children: [Text(tanggal)],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                harga,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}
