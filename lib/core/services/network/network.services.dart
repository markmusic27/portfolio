import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Network {
  Future<Map<String, dynamic>> fetch({
    @required String endPoint,
    Map<String, String> headers,
  }) async {
    try {
      http.Response data = await http.get(endPoint, headers: headers);
      return {"data": jsonDecode(data.body)};
    } catch (e) {
      print(e);
      return null;
    }
  }
}
