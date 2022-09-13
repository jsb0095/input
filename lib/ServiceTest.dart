import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:core';

import 'Member1.dart';

class ServiceTest {
  Future<Member1?> valueTest(
      String nickname,
      String pw,
      String pwc,
      String email,
      String name,
      String address1,
      String address2,
      String address3,
      String address4,
      String birthday,
      String gender,
      String phone) async {
    Map<String, dynamic> queryjson = {
    "id":nickname,
    "pw":pw,
    "pwc":pwc,
    "email":email,
    "name":name,
    "address1":address1,
    "address2":address2,
    "address3":address3,
    "address4":address4,
    "birthday":birthday,
    "gender":gender,
    "phone": phone
  };

    var url = Uri.parse("http://localhost:9111/api");
    var requestData = jsonEncode(queryjson);
    print("스프링부트 전송");
    http.Response response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: requestData);
    if (response.statusCode == 200) {
      print(requestData);
      // Map responseBodyMap = jsonDecode(response.body);
      return null;
    }
    return null;
  }
}
