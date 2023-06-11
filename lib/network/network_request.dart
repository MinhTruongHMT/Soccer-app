import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/model/nhanvien.dart';

class NetwordRequest {
  static const String url = "http://192.168.0.16:8080/api/Nhanviens/getAllNhanvien";

  static List<NhanVien> parseNhanVien(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<NhanVien> nhanViens =
        list.map((model) => NhanVien.fromJson(model)).toList();
    return nhanViens;
  }

  static Future<List<NhanVien>> fetvhNhanViens({int page = 1}) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return compute(parseNhanVien, response.body);
    } else {
      throw Exception('Can\'t  get list Nhanvien');
    }
  }
}
