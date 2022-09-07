import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

class Member1 {
  final String id;
  final String pw;
  final String pwc;
  final String email;
  final String name;
  final String address1;
  final String address2;
  final String address3;
  final String address4;
  final String birthday;
  final String gender;
  final String phone;

  Member1(
      {required this.id,
      required this.pw,
      required this.pwc,
      required this.email,
      required this.name,
      required this.address1,
      required this.address2,
      required this.address3,
      required this.address4,
      required this.birthday,
      required this.gender,
      required this.phone});

  factory Member1.formMap(Map member1Map) {
    var memberMap;
    return Member1(
      id: memberMap['id'],
      pw: memberMap['pw'],
      pwc: memberMap['pwc'],
      email: memberMap['email'],
      name: memberMap['name'],
      address1: memberMap['address1'],
      address2: memberMap['address2'],
      address3: memberMap['address3'],
      address4: memberMap['address4'],
      birthday: memberMap['birthday'],
      gender: memberMap['gender'],
      phone: memberMap['phone'],
    );
  }
}
