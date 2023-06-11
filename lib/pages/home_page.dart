import 'package:flutter/material.dart';
import 'package:my_app/model/nhanvien.dart';
import 'dart:async';
import 'package:my_app/network/network_request.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<NhanVien> nhanVienList;
  List<NhanVien> nhanVienData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("COMPUTER DO CALL API ");
    NetwordRequest.fetvhNhanViens().then((dataFromServer) {
      setState(() {
        nhanVienData = dataFromServer;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("provider API"),
        ),
        body: ListView.builder(
            itemCount: nhanVienData.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Text(nhanVienData[index].fullName),
                    Text(nhanVienData[index].phone)
                  ],
                ),
              );
            }));
  }
}
