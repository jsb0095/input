import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

class Member1 {
  final String memberId;
  final String memberPw;
  final String memberPwc;
  final String memberEmail;
  final String memberName;
  final String memberAddress1;
  final String memberAddress2;
  final String memberAddress3;
  final String memberAddress4;
  final String memberBirthday;
  final String memberGender;
  final String memberPhone;
  @JsonSerializable()
  Member1(
      {required this.memberId,
      required this.memberPw,
      required this.memberPwc,
      required this.memberEmail,
      required this.memberName,
      required this.memberAddress1,
      required this.memberAddress2,
      required this.memberAddress3,
      required this.memberAddress4,
      required this.memberBirthday,
      required this.memberGender,
      required this.memberPhone});

  factory Member1.formMap(Map member1Map) {
    var memberMap;
    return Member1(
      memberId: memberMap['memberId'],
      memberPw: memberMap['memberPw'],
      memberPwc: memberMap['memberPwc'],
      memberEmail: memberMap['memberEmail'],
      memberName: memberMap['memberName'],
      memberAddress1: memberMap['memberAddress1'],
      memberAddress2: memberMap['memberAddress2'],
      memberAddress3: memberMap['memberAddress3'],
      memberAddress4: memberMap['memberAddress4'],
      memberBirthday: memberMap['memberBirthday'],
      memberGender: memberMap['memberGender'],
      memberPhone: memberMap['memberPhone'],
    );
  }
}
