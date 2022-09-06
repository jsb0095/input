import 'package:flutter/material.dart';
import 'package:input/ServiceTest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ServiceTest serviceTest = ServiceTest();

  final _formKey = GlobalKey<FormState>();

  final _memberId = TextEditingController();
  final _memberPw = TextEditingController();
  final _memberPwc = TextEditingController();
  final _memberName = TextEditingController();
  final _memberEmail = TextEditingController();
  final _memberBirthday = TextEditingController();
  final _memberAddress1 = TextEditingController();
  final _memberAddress2 = TextEditingController();
  final _memberAddress3 = TextEditingController();
  final _memberAddress4 = TextEditingController();
  final _memberGender = TextEditingController();
  final _memberPhone = TextEditingController();

  String? memberId;
  String? memberPw;
  String? memberPwc;
  String? memberName;
  String? memberEmail;
  String? memberBirthday;
  String? memberAddress1;
  String? memberAddress2;
  String? memberAddress3;
  String? memberAddress4;
  String? memberGender;
  String? memberPhone;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.fromLTRB(200, 50, 200, 50),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _memberId,
                  decoration:
                      InputDecoration(hintText: "아이디를입력해주세요", labelText: "아이디"),
                  validator: (memberId) {
                    if (memberId!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberPw,
                  decoration: InputDecoration(
                      hintText: "비밀번호를입력해주세요", labelText: "비밀번호"),
                  validator: (memberPw) {
                    if (memberPw!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberPwc,
                  decoration: InputDecoration(
                      hintText: "비밀번호를입력해주세요", labelText: "비밀번호재확인"),
                  validator: (memberPwc) {
                    if (memberPwc!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberName,
                  decoration:
                      InputDecoration(hintText: "이름을입력해주세요", labelText: "이름"),
                  validator: (memberName) {
                    if (memberName!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberEmail,
                  decoration: InputDecoration(
                      hintText: "abc@exampl.com", labelText: "이메일"),
                  validator: (memberEmail) {
                    if (memberEmail!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberAddress1,
                  decoration: InputDecoration(hintText: "주소1", labelText: "주소"),
                  validator: (memberAddress1) {
                    if (memberAddress1!.isEmpty) {
                      return '빈값';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberAddress2,
                  decoration:
                      InputDecoration(hintText: "주소2", labelText: "주소2"),
                  validator: (memberAddress2) {
                    if (memberAddress2!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberAddress3,
                  decoration:
                      InputDecoration(hintText: "주소3", labelText: "주소3"),
                  validator: (memberAddress3) {
                    if (memberAddress3!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberAddress4,
                  decoration:
                      InputDecoration(hintText: "주소4", labelText: "주소5"),
                  validator: (memberAddress4) {
                    if (memberAddress4!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberBirthday,
                  decoration: InputDecoration(
                      hintText: "-없이 입력해주세요", labelText: "생년월일"),
                  validator: (memberBirthday) {
                    if (memberBirthday!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberGender,
                  decoration: InputDecoration(hintText: "성별", labelText: "성별"),
                  validator: (memberGender) {
                    if (memberGender!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _memberPhone,
                  decoration: InputDecoration(
                      hintText: "010-1111-1111", labelText: "전화번호"),
                  validator: (memberPhone) {
                    if (memberPhone!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                          serviceTest.valueTest(
                              _memberId.text,
                              _memberPw.text,
                              _memberPwc.text,
                              _memberEmail.text,
                              _memberName.text,
                              _memberAddress1.text,
                              _memberAddress2.text,
                              _memberAddress3.text,
                              _memberAddress4.text,
                              _memberBirthday.text,
                              _memberGender.text,
                              _memberPhone.text);
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
