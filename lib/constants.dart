import 'package:flutter/material.dart';
import 'package:test_project/widgets/home_view_body.dart';
import 'package:test_project/widgets/place_model.dart';
import 'package:test_project/widgets/sign_to_text_view.dart';
import 'package:test_project/widgets/text_to_sign_view.dart';

var views = [
  const HomeViewBody(),
  SignToTextPage(),
  const TextToSignView(),
];

List<PlaceModel> places = [
  PlaceModel(placeName: 'الجميع', icon: Icons.all_inclusive),
  PlaceModel(placeName: 'المستشفى', icon: Icons.local_hospital),
  PlaceModel(placeName: 'التعليم', icon: Icons.school),
  PlaceModel(placeName: 'المطاعم', icon: Icons.restaurant),
  PlaceModel(placeName: 'الكافيهات', icon: Icons.coffee),
];

const Color kPrimaryColor = Color(0xff5E6C00);
const Color kSecondaryColor = Color(0xffF3FCD6);
