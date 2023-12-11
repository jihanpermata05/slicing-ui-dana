import 'package:flutter/material.dart';

class DetailComplete extends StatefulWidget {
  final String nama;
  final String tanggal;
  final String harga;
  DetailComplete(
      {Key? key,
      required this.nama,
      required this.tanggal,
      required this.harga})
      : super(key: key);

  State<DetailComplete> createState() => _DetailCompleteState();
}

class _DetailCompleteState extends State<DetailComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
