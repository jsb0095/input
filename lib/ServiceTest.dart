import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:core';

class ServiceTest {
  void valueTest(
      String memberId,
      String memberPw,
      String memberPwc,
      String memberEmail,
      String memberName,
      String memberAddress1,
      String memberAddress2,
      String memberAddress3,
      String memberAddress4,
      String memberBirthday,
      String memberGender,
      String memberPhone) async {
    Set<String> queryJson = {
      "memberId:$memberId",
      "memberPw:$memberPw",
      "memberPwc:$memberPwc",
      "memberEmail:$memberEmail",
      "memberName:$memberName",
      "memberAddress1:$memberAddress1",
      "memberAddress2:$memberAddress2",
      "memberAddress3:$memberAddress3",
      "memberAddress4:$memberAddress4",
      "memberBirthday:$memberBirthday",
      "memberGender:$memberGender",
      "memberPhone:$memberPhone"
    };
    print(memberId);
    var url = Uri.parse("http://10.0.2.2:9111/api");
    print(memberId);
    http.Response response = await http.post((url),
        headers: {"Accept": "application/json"}, body: jsonEncode(queryJson));
    if (response.statusCode == 200) {
      String responseBodyMap = jsonDecode(response.body);
      print(response.statusCode);
    } else {
      print(response.statusCode);
    }
  }
}
