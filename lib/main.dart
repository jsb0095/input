import 'package:flutter/material.dart';
import 'package:input/ServiceTest.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ServiceTest serviceTest = ServiceTest();

  final _formKey = GlobalKey<FormState>();

  final _nickname = TextEditingController();
  final _pw = TextEditingController();
  final _pwc = TextEditingController();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _birthday = TextEditingController();
  final _address1 = TextEditingController();
  final _address2 = TextEditingController();
  final _address3 = TextEditingController();
  final _address4 = TextEditingController();
  final _gender = TextEditingController();
  final _phone = TextEditingController();

  String? nickname;
  String? pw;
  String? pwc;
  String? name;
  String? email;
  String? birthday;
  String? address1;
  String? address2;
  String? address3;
  String? address4;
  String? gender;
  String? phone;

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
                  controller: _nickname,
                  decoration:
                      InputDecoration(hintText: "아이디를입력해주세요", labelText: "아이디"),
                  validator: (nickname) {
                    if (nickname!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _pw,
                  decoration: InputDecoration(
                      hintText: "비밀번호를입력해주세요", labelText: "비밀번호"),
                  validator: (pw) {
                    if (pw!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _pwc,
                  decoration: InputDecoration(
                      hintText: "비밀번호를입력해주세요", labelText: "비밀번호재확인"),
                  validator: (pwc) {
                    if (pwc!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _name,
                  decoration:
                      InputDecoration(hintText: "이름을입력해주세요", labelText: "이름"),
                  validator: (name) {
                    if (name!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      hintText: "abc@exampl.com", labelText: "이메일"),
                  validator: (email) {
                    if (email!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _address1,
                  decoration: InputDecoration(hintText: "주소1", labelText: "주소"),
                  validator: (address1) {
                    if (address1!.isEmpty) {
                      return '빈값';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _address2,
                  decoration:
                      InputDecoration(hintText: "주소2", labelText: "주소2"),
                  validator: (address2) {
                    if (address2!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _address3,
                  decoration:
                      InputDecoration(hintText: "주소3", labelText: "주소3"),
                  validator: (address3) {
                    if (address3!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _address4,
                  decoration:
                      InputDecoration(hintText: "주소4", labelText: "주소5"),
                  validator: (address4) {
                    if (address4!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _birthday,
                  decoration: InputDecoration(
                      hintText: "-없이 입력해주세요", labelText: "생년월일"),
                  validator: (birthday) {
                    if (birthday!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _gender,
                  decoration: InputDecoration(hintText: "성별", labelText: "성별"),
                  validator: (gender) {
                    if (gender!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _phone,
                  decoration: InputDecoration(
                      hintText: "010-1111-1111", labelText: "전화번호"),
                  validator: (phone) {
                    if (phone!.isEmpty) {
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
                              _nickname.text,
                              _pw.text,
                              _pwc.text,
                              _email.text,
                              _name.text,
                              _address1.text,
                              _address2.text,
                              _address3.text,
                              _address4.text,
                              _birthday.text,
                              _gender.text,
                              _phone.text);
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
